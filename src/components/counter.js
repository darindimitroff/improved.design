import React from 'react'

class Counter extends React.Component {
  constructor(props) {
    super()
    this.state = {
      count: 0,
    }
  }

  onClick(event) {
    this.setState({
      count: this.state.count + 1,
    })
  }

  render() {
    return (
    <button onClick={this.onClick.bind(this)}>{`Count Up!! ${this.state.count}`}</button>
    )
  }
}

export default Counter