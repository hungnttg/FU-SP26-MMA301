import { StyleSheet, Text,View, TouchableOpacity } from "react-native";
import React from "react";
export default class Slot3 extends React.Component{
    //I. Code
    //1. Ham khoi tao
    constructor(){
        super();
        //khai bao cac phep tinh o day
        this.operations = ['DEL','+','-','*','/'];
        //quan ly trang thai
        this.state={
            resultText: "",//bien luu ket qua
            calculationText:"",//bien luu bieu thuc tinh toan
        }
    }
    //2.Cac ham tu dinh nghia
    //2.1 Xu ly su kien click button
    pressButton(text){
        if(text==="="){//khi nguoi dung nhan dau =
            return this.calculationResult(this.state.resultText);//ham tinh toan gia tri bieu thuc
        }
        else if(text==='DEL'){//khi nguoi dung nhan phim DEL
            //goi ham
            this.operate('DEL');//goi ham xu ly xoa
        }
        else {//nhan cac phim khac => add them vao chuoi
            this.setState({
                resultText: this.state.resultText + text,
            });
        }
    }
    //2.2 Tinh gia tri bieu thuc
    calculationResult(text){
        this.setState({
            calculationText: eval(text),//ham tinh toan gia tri bieu thuc
        });
    }
    //2.3 Ham xu ly phep tinh
    operate(o){
        switch(o){
            case 'DEL':
                //pha vo chuoi
                let text = this.state.resultText.split('');
                text.pop();//xoa phan tu cuoi cung
                //join cac phan tu con lai thanh chuoi
                this.setState({
                    resultText: text.join(''),
                });
                break;
            case '+':
            case '-':
            case '*':
            case '/':
                this.setState({
                    resultText: this.state.resultText+o, //noi phep tinh vao bieu thuc
                });
                break;
        }
    }
    //II. layout
    render(){
        return(
            <View style={styles.container}>
                {/* view hien thi ket qua */}
                <View style={styles.result}>
                    <Text style={styles.title}>{this.state.resultText}</Text>
                </View>
                {/* View hien thi phep tinh */}
                <View style={styles.calculation}>
                    <Text style={styles.title}>{this.state.calculationText}</Text>
                </View>
                {/* View hien thi cac button */}
                <View style={styles.buttons}>
                    {/* cot 1 */}
                    <View style={styles.numbers1}>
                        <TouchableOpacity style={styles.btn} key={1} onPress={()=>this.pressButton(1)}><Text style={styles.title}>1</Text></TouchableOpacity>
                        <TouchableOpacity style={styles.btn} key={4} onPress={()=>this.pressButton(4)}><Text style={styles.title}>4</Text></TouchableOpacity>
                        <TouchableOpacity style={styles.btn} key={7} onPress={()=>this.pressButton(7)}><Text style={styles.title}>7</Text></TouchableOpacity>
                        <TouchableOpacity style={styles.btn} key={'.'} onPress={()=>this.pressButton('.')}><Text style={styles.title}>.</Text></TouchableOpacity>
                    </View>
                    {/* cot 2 */}
                    <View style={styles.numbers2}>
                        <TouchableOpacity style={styles.btn} key={2} onPress={()=>this.pressButton(2)}><Text style={styles.title}>2</Text></TouchableOpacity>
                        <TouchableOpacity style={styles.btn} key={5} onPress={()=>this.pressButton(5)}><Text style={styles.title}>5</Text></TouchableOpacity>
                        <TouchableOpacity style={styles.btn} key={8} onPress={()=>this.pressButton(8)}><Text style={styles.title}>8</Text></TouchableOpacity>
                        <TouchableOpacity style={styles.btn} key={0} onPress={()=>this.pressButton(0)}><Text style={styles.title}>0</Text></TouchableOpacity>
                    </View>
                    {/* cot 3 */}
                    <View style={styles.numbers3}>
                        <TouchableOpacity style={styles.btn} key={3} onPress={()=>this.pressButton(3)}><Text style={styles.title}>3</Text></TouchableOpacity>
                        <TouchableOpacity style={styles.btn} key={6} onPress={()=>this.pressButton(6)}><Text style={styles.title}>6</Text></TouchableOpacity>
                        <TouchableOpacity style={styles.btn} key={9} onPress={()=>this.pressButton(9)}><Text style={styles.title}>9</Text></TouchableOpacity>
                        <TouchableOpacity style={styles.btn} key={'='} onPress={()=>this.pressButton('=')}><Text style={styles.title}>=</Text></TouchableOpacity>
                    </View>
                    {/* cot phep tinnh */}
                    <View style={styles.operations}>
                        <TouchableOpacity style={styles.btn} key={'+'} onPress={()=>this.pressButton('+')}><Text style={styles.title}>+</Text></TouchableOpacity>
                        <TouchableOpacity style={styles.btn} key={'-'} onPress={()=>this.pressButton('-')}><Text style={styles.title}>-</Text></TouchableOpacity>
                        <TouchableOpacity style={styles.btn} key={'*'} onPress={()=>this.pressButton('*')}><Text style={styles.title}>*</Text></TouchableOpacity>
                        <TouchableOpacity style={styles.btn} key={'/'} onPress={()=>this.pressButton('/')}><Text style={styles.title}>/</Text></TouchableOpacity>
                        <TouchableOpacity style={styles.btn} key={'DEL'} onPress={()=>this.pressButton('DEL')}><Text style={styles.title}>DEL</Text></TouchableOpacity>
                    </View>
                </View>
            </View>
        );
    }
}
//css
const styles = StyleSheet.create({
    container:{
        flex:1,
        flexDirection: 'column',
    },
    result: {
        flex:1,
        justifyContent:'space-around',
        alignItems: 'flex-end',
        backgroundColor:'green',
    },
    calculation:{
        flex:2,
        justifyContent:'space-around',
        alignItems:'flex-end',
        backgroundColor:'orange',
    },
    buttons:{
        flex:7,
        flexDirection:'row',
        backgroundColor:'#AAA',
    },
    numbers: {
        flex: 3,
        flexDirection:'row',
        backgroundColor:'yellow',
        justifyContent: 'space-around',
        alignItems:'stretch',
    },  
    numbers1: {
        flex: 1,
        flexDirection:'column',
        backgroundColor:'#AA1',
        justifyContent: 'space-around',
        alignItems:'stretch',
    },  
    numbers2: {
        flex: 1,
        flexDirection:'column',
        backgroundColor:'#AB1',
        justifyContent: 'space-around',
        alignItems:'stretch',
    }, 
    numbers3: {
        flex: 1,
        flexDirection:'column',
        backgroundColor:'#AC1',
        justifyContent: 'space-around',
        alignItems:'stretch',
    }, 
    operations: {
        flex:1,
        flexDirection:'column',
        backgroundColor:'#AD1',
        justifyContent: 'space-around',
        alignItems:'stretch',
    },
    btn:{
        flex:1,
        justifyContent:'center',
        alignItems:'center',
    },
    title:{
        color:'red',
        textAlign:'center',
        fontSize:35,
    }
});