import {bindActionCreators} from 'redux';
import {connect} from 'react-redux';
import Counter from '../components/Counter';
import * as counterActions from '../actions/counter';

function mapStateToProps(state) {
  return {
    counter: state.counter
  }
}

function mapDispatchToProps(dispatch) {
  return bindActionCreators(counterActions, dispatch);
}

export default connect(mapStateToProps, mapDispatchToProps)(Counter);
