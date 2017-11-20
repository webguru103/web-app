import React, {Component} from 'react';
import {render} from 'react-dom'
import {Provider} from 'react-redux';

import HeaderWrapper from '../components/HeaderWrapper';
import LogoWrapper from '../components/LogoWrapper';
import NavWrapper from '../components/NavWrapper';

export default class Header extends Component {
  render() {
    return (
      <Provider>
          <HeaderWrapper>
          	<LogoWrapper>Actioned</LogoWrapper>
          	<NavWrapper>Home</NavWrapper>
          </HeaderWrapper>
      </Provider>
    );
  }
}
