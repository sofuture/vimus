module Main (main) where

import           Test.Hspec.ShouldBe

-- this is here, to make sure that everything compiles..
import           Run ()

import qualified KeySpec
import qualified TabSpec
import qualified UtilSpec
import qualified InputSpec
import qualified MacroSpec
import qualified RulerSpec
import qualified Widget.ListWidgetSpec
import qualified CommandSpec
import qualified Command.CoreSpec
import qualified Command.HelpSpec
import qualified Command.ParserSpec

main :: IO ()
main = hspecX $ do
  describe "KeySpec"                KeySpec.spec
  describe "TabSpec"                TabSpec.spec
  describe "UtilSpec"               UtilSpec.spec
  describe "InputSpec"              InputSpec.spec
  describe "MacroSpec"              MacroSpec.spec
  describe "RulerSpec"              RulerSpec.spec
  describe "Widget.ListWidgetSpec"  Widget.ListWidgetSpec.spec
  describe "CommandSpec"            CommandSpec.spec
  describe "Command.CoreSpec"       Command.CoreSpec.spec
  describe "Command.HelpSpec"       Command.HelpSpec.spec
  describe "Command.ParserSpec"     Command.ParserSpec.spec
