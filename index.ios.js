// import a library from node-modules
import ReactNative,{AppRegistry} from 'react-native';

import HelloWorldComponent from './components/HelloWorld'
AppRegistry.registerComponent('HelloWorldEx',()=>HelloWorldComponent);

import ListViewComponent from './components/ListView'
AppRegistry.registerComponent('ListViewBasicEx',()=>ListViewComponent);

import ListViewNetworkComponent from './components/ListView-Network'
AppRegistry.registerComponent('ListViewNetworkingEx',()=>ListViewNetworkComponent)