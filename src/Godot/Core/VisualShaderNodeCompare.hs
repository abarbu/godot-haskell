{-# LANGUAGE DerivingStrategies, GeneralizedNewtypeDeriving,
  TypeFamilies, TypeOperators, FlexibleContexts, DataKinds #-}
module Godot.Core.VisualShaderNodeCompare
       (Godot.Core.VisualShaderNodeCompare._FUNC_GREATER_THAN_EQUAL,
        Godot.Core.VisualShaderNodeCompare._FUNC_GREATER_THAN,
        Godot.Core.VisualShaderNodeCompare._CTYPE_SCALAR,
        Godot.Core.VisualShaderNodeCompare._CTYPE_TRANSFORM,
        Godot.Core.VisualShaderNodeCompare._FUNC_LESS_THAN,
        Godot.Core.VisualShaderNodeCompare._FUNC_NOT_EQUAL,
        Godot.Core.VisualShaderNodeCompare._COND_ANY,
        Godot.Core.VisualShaderNodeCompare._FUNC_LESS_THAN_EQUAL,
        Godot.Core.VisualShaderNodeCompare._CTYPE_VECTOR,
        Godot.Core.VisualShaderNodeCompare._FUNC_EQUAL,
        Godot.Core.VisualShaderNodeCompare._COND_ALL,
        Godot.Core.VisualShaderNodeCompare._CTYPE_BOOLEAN,
        Godot.Core.VisualShaderNodeCompare.get_comparison_type,
        Godot.Core.VisualShaderNodeCompare.get_condition,
        Godot.Core.VisualShaderNodeCompare.get_function,
        Godot.Core.VisualShaderNodeCompare.set_comparison_type,
        Godot.Core.VisualShaderNodeCompare.set_condition,
        Godot.Core.VisualShaderNodeCompare.set_function)
       where
import Data.Coerce
import Foreign.C
import Godot.Internal.Dispatch
import System.IO.Unsafe
import Godot.Gdnative.Internal
import Godot.Api.Types

_FUNC_GREATER_THAN_EQUAL :: Int
_FUNC_GREATER_THAN_EQUAL = 3

_FUNC_GREATER_THAN :: Int
_FUNC_GREATER_THAN = 2

_CTYPE_SCALAR :: Int
_CTYPE_SCALAR = 0

_CTYPE_TRANSFORM :: Int
_CTYPE_TRANSFORM = 3

_FUNC_LESS_THAN :: Int
_FUNC_LESS_THAN = 4

_FUNC_NOT_EQUAL :: Int
_FUNC_NOT_EQUAL = 1

_COND_ANY :: Int
_COND_ANY = 1

_FUNC_LESS_THAN_EQUAL :: Int
_FUNC_LESS_THAN_EQUAL = 5

_CTYPE_VECTOR :: Int
_CTYPE_VECTOR = 1

_FUNC_EQUAL :: Int
_FUNC_EQUAL = 0

_COND_ALL :: Int
_COND_ALL = 0

_CTYPE_BOOLEAN :: Int
_CTYPE_BOOLEAN = 2

{-# NOINLINE bindVisualShaderNodeCompare_get_comparison_type #-}

bindVisualShaderNodeCompare_get_comparison_type :: MethodBind
bindVisualShaderNodeCompare_get_comparison_type
  = unsafePerformIO $
      withCString "VisualShaderNodeCompare" $
        \ clsNamePtr ->
          withCString "get_comparison_type" $
            \ methodNamePtr ->
              godot_method_bind_get_method clsNamePtr methodNamePtr

get_comparison_type ::
                      (VisualShaderNodeCompare :< cls, Object :< cls) => cls -> IO Int
get_comparison_type cls
  = withVariantArray []
      (\ (arrPtr, len) ->
         godot_method_bind_call
           bindVisualShaderNodeCompare_get_comparison_type
           (upcast cls)
           arrPtr
           len
           >>= \ (err, res) -> throwIfErr err >> fromGodotVariant res)

{-# NOINLINE bindVisualShaderNodeCompare_get_condition #-}

bindVisualShaderNodeCompare_get_condition :: MethodBind
bindVisualShaderNodeCompare_get_condition
  = unsafePerformIO $
      withCString "VisualShaderNodeCompare" $
        \ clsNamePtr ->
          withCString "get_condition" $
            \ methodNamePtr ->
              godot_method_bind_get_method clsNamePtr methodNamePtr

get_condition ::
                (VisualShaderNodeCompare :< cls, Object :< cls) => cls -> IO Int
get_condition cls
  = withVariantArray []
      (\ (arrPtr, len) ->
         godot_method_bind_call bindVisualShaderNodeCompare_get_condition
           (upcast cls)
           arrPtr
           len
           >>= \ (err, res) -> throwIfErr err >> fromGodotVariant res)

{-# NOINLINE bindVisualShaderNodeCompare_get_function #-}

bindVisualShaderNodeCompare_get_function :: MethodBind
bindVisualShaderNodeCompare_get_function
  = unsafePerformIO $
      withCString "VisualShaderNodeCompare" $
        \ clsNamePtr ->
          withCString "get_function" $
            \ methodNamePtr ->
              godot_method_bind_get_method clsNamePtr methodNamePtr

get_function ::
               (VisualShaderNodeCompare :< cls, Object :< cls) => cls -> IO Int
get_function cls
  = withVariantArray []
      (\ (arrPtr, len) ->
         godot_method_bind_call bindVisualShaderNodeCompare_get_function
           (upcast cls)
           arrPtr
           len
           >>= \ (err, res) -> throwIfErr err >> fromGodotVariant res)

{-# NOINLINE bindVisualShaderNodeCompare_set_comparison_type #-}

bindVisualShaderNodeCompare_set_comparison_type :: MethodBind
bindVisualShaderNodeCompare_set_comparison_type
  = unsafePerformIO $
      withCString "VisualShaderNodeCompare" $
        \ clsNamePtr ->
          withCString "set_comparison_type" $
            \ methodNamePtr ->
              godot_method_bind_get_method clsNamePtr methodNamePtr

set_comparison_type ::
                      (VisualShaderNodeCompare :< cls, Object :< cls) =>
                      cls -> Int -> IO ()
set_comparison_type cls arg1
  = withVariantArray [toVariant arg1]
      (\ (arrPtr, len) ->
         godot_method_bind_call
           bindVisualShaderNodeCompare_set_comparison_type
           (upcast cls)
           arrPtr
           len
           >>= \ (err, res) -> throwIfErr err >> fromGodotVariant res)

{-# NOINLINE bindVisualShaderNodeCompare_set_condition #-}

bindVisualShaderNodeCompare_set_condition :: MethodBind
bindVisualShaderNodeCompare_set_condition
  = unsafePerformIO $
      withCString "VisualShaderNodeCompare" $
        \ clsNamePtr ->
          withCString "set_condition" $
            \ methodNamePtr ->
              godot_method_bind_get_method clsNamePtr methodNamePtr

set_condition ::
                (VisualShaderNodeCompare :< cls, Object :< cls) =>
                cls -> Int -> IO ()
set_condition cls arg1
  = withVariantArray [toVariant arg1]
      (\ (arrPtr, len) ->
         godot_method_bind_call bindVisualShaderNodeCompare_set_condition
           (upcast cls)
           arrPtr
           len
           >>= \ (err, res) -> throwIfErr err >> fromGodotVariant res)

{-# NOINLINE bindVisualShaderNodeCompare_set_function #-}

bindVisualShaderNodeCompare_set_function :: MethodBind
bindVisualShaderNodeCompare_set_function
  = unsafePerformIO $
      withCString "VisualShaderNodeCompare" $
        \ clsNamePtr ->
          withCString "set_function" $
            \ methodNamePtr ->
              godot_method_bind_get_method clsNamePtr methodNamePtr

set_function ::
               (VisualShaderNodeCompare :< cls, Object :< cls) =>
               cls -> Int -> IO ()
set_function cls arg1
  = withVariantArray [toVariant arg1]
      (\ (arrPtr, len) ->
         godot_method_bind_call bindVisualShaderNodeCompare_set_function
           (upcast cls)
           arrPtr
           len
           >>= \ (err, res) -> throwIfErr err >> fromGodotVariant res)