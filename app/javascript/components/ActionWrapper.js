import React from "react"
import PropTypes from "prop-types"

class ActionWrapper extends React.Component {
  render () {
    return <div className="_actions" >{this.props.children}</div>
  }
}

ActionWrapper.propTypes = {
  children: PropTypes.node,
  className: PropTypes.string
};

export default ActionWrapper
