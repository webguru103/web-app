import React, {Component} from 'react';
import {render} from 'react-dom'
import {Provider} from 'react-redux';
import configureStore from '../store/configureStore';
import {setCounter} from '../actions/counter'
import Admin from '../components/Admin';
import CounterApp from './CounterApp';

const store = configureStore();

export default class Root extends Component {
  componentWillMount() {
    store.dispatch(setCounter(this.props.counter));
  }
  render() {
    return (
      <Provider store={store}>
        <Admin>
          <h1>Start the React and Redux for Actioned</h1><br />
          <h3>Work Hardly</h3><br/>
          <CounterApp />
          <img src="https://i.pinimg.com/originals/02/eb/f0/02ebf0554b95e5355a3e356542d85a87.jpg" />
        </Admin>
      </Provider>
    );
  }
}
