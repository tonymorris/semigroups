{-# LANGUAGE CPP #-}
#ifdef LANGUAGE_DeriveDataTypeable
{-# LANGUAGE DeriveDataTypeable #-}
#endif
-----------------------------------------------------------------------------
-- |
-- Module      :  Data.Set.NonEmpty
-- Copyright   :  (C) 2011-2013 Edward Kmett,
--                (C) 2010 Tony Morris, Oliver Taylor, Eelis van der Weegen
-- License     :  BSD-style (see the file LICENSE)
--
-- Maintainer  :  Edward Kmett <ekmett@gmail.com>
-- Stability   :  provisional
-- Portability :  portable
--
-- A NonEmpty set is a Data.Set(Set), but always contains at least
-- one element.
----------------------------------------------------------------------------

module Data.Set.NonEmpty (

) where

import Data.Set(Set)

#ifdef LANGUAGE_DeriveDataTypeable
import Data.Data
#endif

data NonEmpty a = a :+ Set a deriving
  ( Eq, Ord, Show, Read
#ifdef LANGUAGE_DeriveDataTypeable
  , Data, Typeable
#endif
  )

{-

size :: Set a -> Int
member :: Ord a => a -> Set a -> Bool
notMember :: Ord a => a -> Set a -> Bool
lookupLT :: Ord a => a -> Set a -> Maybe a
lookupGT :: Ord a => a -> Set a -> Maybe a
lookupLE :: Ord a => a -> Set a -> Maybe a
lookupGE :: Ord a => a -> Set a -> Maybe a
isSubsetOf :: Ord a => Set a -> Set a -> Bool
isProperSubsetOf :: Ord a => Set a -> Set a -> Bool
singleton :: a -> NonEmpty a
insert :: Ord a => a -> Set a -> Set a
delete :: Ord a => a -> Set a -> Set a
union :: Ord a => Set a -> Set a -> Set a
unions :: Ord a => [Set a] -> Set a
-}
