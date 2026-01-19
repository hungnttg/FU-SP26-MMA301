import React,{useState} from "react";
import { Text,View,StyleSheet,TouchableOpacity } from "react-native";
export default function Slot4_1(){
    const [calculation,setCalculation]=useState('');
    const [result,setResult]=useState('');
    //--click button
    const pressButton = (text) =>{
        if(text === "="){
            try {
                setResult(eval(calculation).toString());//tinh toan ket qua
                setCalculation('');//reset lai bien
            } catch (error) {
                setResult('Loi');
            }
        } else {//khi nguoi dung click vao button khac
            setCalculation(prev => prev + text);//noi chuoi
        }
    };
    //----- ham click vao phep tinh
    const operate = (oper) =>{
        if(oper === 'DEL'){
            setCalculation(prev => prev.slice(0,-1));//pha vo chuoi va xoa di 1 ky tu
        }else {
            setCalculation(prev => prev + oper);//noi chuoi
        }
    };
    //ham thiet ke ma tran button
    const renderNumberButtons = () =>{
        const nums = [[1,2,3],[4,5,6],[7,8,9],['.','0','=']];
        return nums.map((row,i)=>(
            <View key={i} style={styles.row}>
                {row.map((num)=>(
                    <TouchableOpacity key={num} style={styles.btn} onPress={()=>pressButton(num.toString())}>
                        <Text style={styles.txt}>{num}</Text>
                    </TouchableOpacity>
                ))}
            </View>
        ));
    };
    //ham render button phep tinh
    const renderOperatorButton = () =>{
        const ops = ['+','-','*','/','DEL'];
        return ops.map((op)=>(
            <TouchableOpacity key={op} style={styles.btn} onPress={()=>operate(op)}>
                <Text style={styles.txt}>{op}</Text>
            </TouchableOpacity>
        ));
    };
    //giao dien
    return(
        <View style={styles.container}>
            <View style={styles.resultText}>
                <Text style={styles.txt}>{result}</Text>
            </View>
            {/* ---- */}
            <View style={styles.calculationText}>
                <Text style={styles.txt}>{calculation}</Text>
            </View>
            {/* ---- */}
            <View style={styles.buttons}>
                <View style={styles.numberButton}>
                    {renderNumberButtons()}
                </View>
                <View style={styles.operationButtons}>
                    {renderOperatorButton()}
                </View>
            </View>
        </View>
    );
}
const styles = StyleSheet.create({
    container:{flex:1,backgroundColor:'yellow'},
    resultText:{flex:1,backgroundColor:'green',justifyContent:'center',alignItems:'center'},
    calculationText:{flex:2,backgroundColor:'#AB1',justifyContent:'center',alignItems:'center'},
    buttons:{flex:7,flexDirection:'row',backgroundColor:'pink'},
    numberButton:{flex:3,backgroundColor:'#BB1',justifyContent:'space-around'},
    operationButtons:{flex:1,backgroundColor:'#CC1',justifyContent:'space-between'},
    row:{flexDirection:'row',justifyContent:'space-around'},
    btn:{flex:1,backgroundColor:'#DD1',justifyContent:'center',alignItems:'center',fontSize:30},
    txt: {fontSize:30,fontWeight:'bold'},

});