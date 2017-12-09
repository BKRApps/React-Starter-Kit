// import a library from node-modules
import React, { Component } from 'react';
import ReactNative,{View,Text,ListView} from 'react-native';

// create a functional Component
export default class HelloComponent extends Component { 
    
    render () { 
      return ( 
          <View style ={{paddingTop:120}}>
              <Text style={{fontSize:20,color:'red'}}> Hello World!. Welcome to React Native.</Text>
          </View>
      ); 
    } 
  }