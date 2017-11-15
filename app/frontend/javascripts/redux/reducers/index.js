/*
 * 14/11/2017 - Marius Ghimbir
 * //app/frontend/javascripts/main.js
 */
import { combineReducers } from 'redux';
let reducer = (state = {}, action) => {
  switch (action.type) {
    default:
      return state;
  }
};
const rootReducer = combineReducers({
  reducer
});
export default rootReducer;