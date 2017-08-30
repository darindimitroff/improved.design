import React from 'react'
import Link from 'gatsby-link'

import styled from 'styled-components'

import Counter from './counter'

const Nav = styled.nav`
    display: flex;
    justify-content: space-between;
    padding: 1rem;
`

const PrimaryNav = () => {
    let count = 0

    const sayHi = (event) => {
       count: count+1
    }
    
    return (
        <Nav>
            <Link to="/">Improved</Link>
            <Counter/>
        </Nav>
    )
}

export default PrimaryNav
