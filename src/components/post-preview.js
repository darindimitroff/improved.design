import { React, PropTypes } from 'react'
import styled from 'styled-components'
import Link from 'gatsby-link'

const PostPreview = props => 
  <div>
    <Link to={props.link}>
      <h3>{props.title}</h3>
    </Link>
    <span>{props.date}</span>
    <p>{props.content}</p>
  </div>

PostPreview.propTypes = {
  link: PropTypes.string.isRequired,
  title: PropTypes.string.isRequired,
  date: PropTypes.string,
  content: PropTypes.string,
}

export default PostPreview