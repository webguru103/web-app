import React from "react"
import PropTypes from "prop-types"
import ActionWrapper from "./ActionWrapper"

class ActionBoard extends React.Component {
  render () {
  	const actions = [
  		{"description": "Fixing Error1"}, 
  		{"description": "Fixing Error2"}, 
  		{"description": "Fixing Error3"}, 
  		{"description": "Fixing Error4"}, 
  		{"description": "Fixing Error5"}, 
  		{"description": "Fixing Error6"}
	];
	const actionsTitle = "OutStanding";
	const actionsList = actions.map((action, i) =>
  		<ActionWrapper key={i} >{action.description}</ActionWrapper>
	);
    return (
      <div className="actions-board">
      	<div className="_actions-group">
      		<div className="_actions-title">{actionsTitle}</div>
        	<ActionWrapper>{this.props.description}</ActionWrapper>
        	{actionsList}
        </div>
      </div>
    );
  }
}

ActionBoard.propTypes = {
  description: PropTypes.string,
  className: PropTypes.string
};
export default ActionBoard
