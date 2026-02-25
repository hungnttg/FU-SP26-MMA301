//npm i @react-native-async-storage/async-storage
//man hinh HomeScreen
import React,{useState,useEffect,useCallback} from "react";
//useState: cap nhat trang thai
//useEffect: load du lieu lan dau tien; va cac lan khac neu cos thay doi du lieu
//useCallback: ghi nho 1 ham, giup ham do khong bi tao lai sau moi lan render
//useCallback => tranh tao tai function khong can thiets
import { View,Text,TextInput,Button,FlatList,TouchableOpacity } from "react-native";
import { NavigationContainer,useFocusEffect } from "@react-navigation/native";
import { createStackNavigator } from "@react-navigation/stack";
import AsyncStorage from '@react-native-async-storage/async-storage';
//luu tru du lieu local: AsyncStorage
//dinh nghia cac man hinh
const HomeScreen = ({navigation}) =>{
    const [lands,setLands]=useState([]);
    const [search,setSearch]=useState('');
    //doc du lieu tu local neu ton tai
    useFocusEffect( //chay effect moi khi man hinh duoc focus (mo, quay lai)
        useCallback(()=>{
            //dong bo du lieu
            (async () => {
                const data = await AsyncStorage.getItem('lands');//doc
                setLands(data ? JSON.parse(data) : []);//gan cho state
            })();
        },[])
    );
    return(
        <View style={{flex:1,padding:10}}>
            <TextInput placeholder="Tim kiem" onChangeText={setSearch}/>
            <FlatList
                data={lands.filter(l=>l.name.includes(search) || l.location.includes(search))}
                keyExtractor={item => item.id}
                renderItem={({item}) => (
                    <TouchableOpacity onPress={()=> navigation.navigate('Detail',{land: item})}>
                        <Text>{item.name} - {item.location}</Text>
                    </TouchableOpacity>
                )}
            />
            <Button title="Them" onPress={()=>navigation.navigate('Edit')}/>
        </View>
    );
}
//man hinh LandScreen
    const LandScreen = ({navigation,route}) =>{
        //code
        const [land,setLand]=useState(route.params?.land 
            || {id:Date.now().toString(),name:'',location:'',price:''});
            //ham luu du lieu
        const saveLand = async () => {
            const storedLands = JSON.parse(await AsyncStorage.getItem('lands'))|| [];
            //them du lieu vao
            await AsyncStorage.setItem('lands',JSON.stringify(route.params?.land ?
                storedLands.map(l=>l.id === land.id ? land: l) : [...storedLands, land]
            ));
            navigation.goBack();
        };
        //layout
        return(
            <View style={{flex:1, padding:10}}>
                <TextInput placeholder="Ten" value={land.name} onChangeText={v=>setLand({...land,name:v})}/>
                <TextInput placeholder="VI tri" value={land.location} onChangeText={v=>setLand({...land,location:v})}/>
                <TextInput placeholder="GIa" value={land.price} onChangeText={v=>setLand({...land,price:v})}
                    keyboardType="numeric"
                    />
                <Button title="Luu" onPress={saveLand}/>
            </View>
        );
    }
    //man hinh Detail
    const DetailScreen = ({route,navigation}) =>{
        const {land} = route.params;
        const deleteLands = async () =>{
            const storedLands = JSON.parse(await AsyncStorage.getItem('lands')) || [];
            await AsyncStorage.setItem('lands',JSON.stringify(storedLands.filter(l=> l.id !== land.id)));
            navigation.goBack();
        };
        return(
            <View style={{flex:1,padding:10}}>
                <Text>{land.name}</Text>
                <Text>{land.location}</Text>
                <Text>{land.price}</Text>
                <Button title="Xoa" onPress={deleteLands}/>
                <Button title="Sua" onPress={()=>navigation.navigate('Edit',{land})}/>
            </View>
        );
    }
    //goi 3 man hinh
    const Stack = createStackNavigator();
    export default function Slot11(){
        return(
            <Stack.Navigator>
                <Stack.Screen name="Home" component={HomeScreen}/>
                <Stack.Screen name="Edit" component={LandScreen}/>
                <Stack.Screen name="Detail" component={DetailScreen}/>
            </Stack.Navigator>
        );
    }