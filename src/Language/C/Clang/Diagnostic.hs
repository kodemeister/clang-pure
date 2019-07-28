{-|
Module      :  Language.C.Clang.Diagnostic
Copyright   :  (C) 2019 kodemeister

This module exposes bindings for Clang diagnostic reporting functions.
-}
module Language.C.Clang.Diagnostic
  ( Diagnostic()
  , DiagnosticSeverity(..)
  , DiagnosticDisplayOption(..)
  , diagnostics
  , diagnosticSeverity
  , diagnosticLocation
  , diagnosticSpelling
  , diagnosticOption
  , formatDiagnostic
  , formatDiagnosticWithOptions
  )
where

import Data.Maybe

import Language.C.Clang.Internal.FFI
import Language.C.Clang.Internal.Types

diagnostics :: TranslationUnit -> [ Diagnostic ]
diagnostics tu = mapMaybe (diagnostic tu) [0..numDiagnostics tu - 1]
