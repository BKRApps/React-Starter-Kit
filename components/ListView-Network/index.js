import React,{Component} from 'react'
import {View,ListView,Text,ActivityIndicator} from 'react-native'
import styles from '../../components/Styles/style.js'

export default class ListViewNetworkComponent extends Component {

    constructor(props){
        super(props)
        this.state = {
            isLoading: true
          }
    }

    componentDidMount(){
        var url;
        url = this.props.url ? this.props.url : 'https://facebook.github.io/react-native/movies.json'
        if (url) {
            return fetch(url)
                .then((response) => response.json())
                .then((responseJson) => {
                    ds = new ListView.DataSource({rowHasChanged:(r1,r2)=> r1!==r2});
                    this.setState({
                                    isLoading:false,
                                    dataSource:ds.cloneWithRows(responseJson.movies)
                                });
                })
                .catch((error) => {
                    console.error(error)
                })
        }
    }

    render(){
        if (this.state.isLoading) {
            return(
                <View style = {styles.container}>
                    <ActivityIndicator size="large" color="#0000ff" />
                </View>
            );
        }

        return(
            <View style = {styles.container}>
                <ListView
                    dataSource={ this.state.dataSource } 
                    renderRow ={ (rowData) =>
                        <Text style= {styles.text}>{rowData.title}</Text>
                    }
                />
            </View>
        );

    }
}