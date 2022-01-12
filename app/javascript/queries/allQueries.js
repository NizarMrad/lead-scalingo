//import {gql} from "@apollo/client";
import { gql } from "graphql-tag";

//List of all comments
export const COMMENTS = gql`
  query allComments {
    comments {
      body
      userId
      id
      answers {
        body
        userId
        id
      }
    }
  }
`;
//create a comment
export const ADD_COMMENT = gql`
  mutation CreateComment($body: String!) {
    createComment(body: $body) {
      body
    }
  }
`;
//create a answer
export const ADD_ANSWER = gql`
  mutation CreateAnswer($body: String!, $comment_id: String!) {
    createAnswer(body: $body, commentId: $comment_id) {
      body
    }
  }
`;
//create a googlemodif

export const ADD_GOOGLEMODIF = gql`
  mutation CreateGooglemodfi(
    $change1: String!
    $change2: String
    $change3: String
  ) {
    createGooglemodif(change1: $change1, change2: $change2, change3: $change3) {
      change1
      change2
      change3
    }
  }
`;
//create a facebookmodif

export const ADD_FACEBOOKMODIF = gql`
  mutation CreateFacebookmodfi(
    $change1: String!
    $change2: String
    $change3: String
  ) {
    createFacebookmodif(
      change1: $change1
      change2: $change2
      change3: $change3
    ) {
      change1
      change2
      change3
    }
  }
`;
//create a weblemodif

export const ADD_WEBMODIF = gql`
  mutation CreateWebmodfi(
    $change1: String!
    $change2: String
    $change3: String
  ) {
    createWebmodif(change1: $change1, change2: $change2, change3: $change3) {
      change1
      change2
      change3
    }
  }
`;
//prendre rendez-vous

export const ADD_APPOINTEMENT = gql`
  mutation CreateAppointement($motif: String!, $date: ISO8601DateTime!) {
    createAppointement(motif: $motif, date: $date) {
      motif
      date
    }
  }
`;

("https://graph.facebook.com/v12.0/100425791706830/?fields=fan_count&access_token=EAAItdQ9pBSUBABHOriV1kbe2ltLklsRiELcW4vBvANxYxmjG14iIwLCXiJUclRGhhVOdLcFzWa6dUMtikoCnJFH1jiDnSMMOeSGXHxEHpWAMx2EN024iUfZBnRcy7tqvajYVZARPYL5SWWkgjajI4UizQqj0XFO3QQZBAPmw00UfSyoETjIlA17LUcejEwZD");
