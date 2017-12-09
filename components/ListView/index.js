import React,{Component} from 'react'
import {View,Text,ListView} from 'react-native'
import styles from '../../components/Styles/style.js'

export default class ListViewComponent extends Component {
    constructor(props){
        super(props)
        const ds = new ListView.DataSource({rowHasChanged:(r1,r2) =>  r1 !== r2 });
        this.state = {
            datasource : ds.cloneWithRows(['row1','row2','row3','row4'])
        }
    }

    render(){
        return (
            <View>
                <Text style ={styles.container}>ListView Example </Text>
                <ListView
                    dataSource={ this.state.datasource } 
                    renderRow ={ (rowData) =>
                        <Text style= {styles.text}>{rowData}</Text>
                    }
                />
            </View>
        );
    }
}