import React from 'react'
import Link from 'gatsby-link'
import { Container } from 'react-responsive-grid'

import { rhythm, scale } from '../utils/typography'

import PrimaryNav from '../components/PrimaryNav'

class Site extends React.Component {
  render() {
    const { children } = this.props
    return (
      <Container>
        <PrimaryNav/>
        {children()}
      </Container>
    )
  }
}

Site.propTypes = {
  children: React.PropTypes.function,
}

export default Site