import React, { Component } from 'react';
import PropTypes from 'prop-types';
import { requireNativeComponent } from 'react-native';

const Square = requireNativeComponent('Square', null);

class SquareNativeView extends Component {
  render() {
    return (
      <Square {...this.props} />
    );
  }
}

SquareNativeView.defaultProps = {
  text: '',
};

SquareNativeView.propTypes = {
  text: PropTypes.string,
};

export default SquareNativeView;
