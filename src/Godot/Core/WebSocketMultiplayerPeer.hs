{-# LANGUAGE DerivingStrategies, GeneralizedNewtypeDeriving,
  TypeFamilies, TypeOperators, FlexibleContexts, DataKinds #-}
module Godot.Core.WebSocketMultiplayerPeer
       (Godot.Core.WebSocketMultiplayerPeer.sig_peer_packet,
        Godot.Core.WebSocketMultiplayerPeer.get_peer,
        Godot.Core.WebSocketMultiplayerPeer.set_buffers)
       where
import Data.Coerce
import Foreign.C
import Godot.Internal.Dispatch
import System.IO.Unsafe
import Godot.Gdnative.Internal
import Godot.Api.Types

sig_peer_packet ::
                Godot.Internal.Dispatch.Signal WebSocketMultiplayerPeer
sig_peer_packet = Godot.Internal.Dispatch.Signal "peer_packet"

{-# NOINLINE bindWebSocketMultiplayerPeer_get_peer #-}

bindWebSocketMultiplayerPeer_get_peer :: MethodBind
bindWebSocketMultiplayerPeer_get_peer
  = unsafePerformIO $
      withCString "WebSocketMultiplayerPeer" $
        \ clsNamePtr ->
          withCString "get_peer" $
            \ methodNamePtr ->
              godot_method_bind_get_method clsNamePtr methodNamePtr

get_peer ::
           (WebSocketMultiplayerPeer :< cls, Object :< cls) =>
           cls -> Int -> IO WebSocketPeer
get_peer cls arg1
  = withVariantArray [toVariant arg1]
      (\ (arrPtr, len) ->
         godot_method_bind_call bindWebSocketMultiplayerPeer_get_peer
           (upcast cls)
           arrPtr
           len
           >>= \ (err, res) -> throwIfErr err >> fromGodotVariant res)

{-# NOINLINE bindWebSocketMultiplayerPeer_set_buffers #-}

bindWebSocketMultiplayerPeer_set_buffers :: MethodBind
bindWebSocketMultiplayerPeer_set_buffers
  = unsafePerformIO $
      withCString "WebSocketMultiplayerPeer" $
        \ clsNamePtr ->
          withCString "set_buffers" $
            \ methodNamePtr ->
              godot_method_bind_get_method clsNamePtr methodNamePtr

set_buffers ::
              (WebSocketMultiplayerPeer :< cls, Object :< cls) =>
              cls -> Int -> Int -> Int -> Int -> IO Int
set_buffers cls arg1 arg2 arg3 arg4
  = withVariantArray
      [toVariant arg1, toVariant arg2, toVariant arg3, toVariant arg4]
      (\ (arrPtr, len) ->
         godot_method_bind_call bindWebSocketMultiplayerPeer_set_buffers
           (upcast cls)
           arrPtr
           len
           >>= \ (err, res) -> throwIfErr err >> fromGodotVariant res)