module Component.Elm where

import Component.LeftSidebar as LeftSidebar
import Component.RightSidebar as RightSidebar

import String
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)

import Signal


-- MODEL

type alias Model =
  { title : String
  , description : String
  , published: Bool
  , language: String
  , createdAt: String
  , updatedAt: String
  }

initialModel : Model
initialModel =
  { title = "Untitled"
  , description = ""
  , published = False
  , language = ""
  , createdAt = ""
  , updatedAt = ""
  }


-- UPDATE

type Action
  = NoOp
  | EditTitle String
  | EditDescription String
  | EditLanguage String
  | Publish
  | Unpublish
  | Save

update : Action -> Model -> Model
update action model =
  case action of
    NoOp ->
      model
    EditTitle input ->
      { model | title <- input }
    EditDescription input ->
      { model | description <- input }
    EditLanguage input ->
      { model | language <- input }
    Publish ->
      { model | published <- True }
    Unpublish ->
      { model | published <- False }
    Save ->
      model


-- VIEW
