{-# LANGUAGE DerivingStrategies, GeneralizedNewtypeDeriving,
  TypeFamilies, TypeOperators, FlexibleContexts, DataKinds #-}
module Godot.Core.VisualShaderNodeExpression
       (Godot.Core.VisualShaderNodeExpression.get_expression,
        Godot.Core.VisualShaderNodeExpression.set_expression)
       where
import Data.Coerce
import Foreign.C
import Godot.Internal.Dispatch
import System.IO.Unsafe
import Godot.Gdnative.Internal
import Godot.Api.Types

{-# NOINLINE bindVisualShaderNodeExpression_get_expression #-}

bindVisualShaderNodeExpression_get_expression :: MethodBind
bindVisualShaderNodeExpression_get_expression
  = unsafePerformIO $
      withCString "VisualShaderNodeExpression" $
        \ clsNamePtr ->
          withCString "get_expression" $
            \ methodNamePtr ->
              godot_method_bind_get_method clsNamePtr methodNamePtr

get_expression ::
                 (VisualShaderNodeExpression :< cls, Object :< cls) =>
                 cls -> IO GodotString
get_expression cls
  = withVariantArray []
      (\ (arrPtr, len) ->
         godot_method_bind_call
           bindVisualShaderNodeExpression_get_expression
           (upcast cls)
           arrPtr
           len
           >>= \ (err, res) -> throwIfErr err >> fromGodotVariant res)

{-# NOINLINE bindVisualShaderNodeExpression_set_expression #-}

bindVisualShaderNodeExpression_set_expression :: MethodBind
bindVisualShaderNodeExpression_set_expression
  = unsafePerformIO $
      withCString "VisualShaderNodeExpression" $
        \ clsNamePtr ->
          withCString "set_expression" $
            \ methodNamePtr ->
              godot_method_bind_get_method clsNamePtr methodNamePtr

set_expression ::
                 (VisualShaderNodeExpression :< cls, Object :< cls) =>
                 cls -> GodotString -> IO ()
set_expression cls arg1
  = withVariantArray [toVariant arg1]
      (\ (arrPtr, len) ->
         godot_method_bind_call
           bindVisualShaderNodeExpression_set_expression
           (upcast cls)
           arrPtr
           len
           >>= \ (err, res) -> throwIfErr err >> fromGodotVariant res)