{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

import Data.Aeson
import Data.ByteString.Lazy as BS
import GHC.Generics

data User = User
  { userId :: Int,
    userName :: String,
    userEmail :: String
  }
  deriving (Show, Generic)

instance ToJSON User

main :: IO ()
main = do
  let user1 = User {userId = 1, userName = "Alice", userEmail = "alice@example.com"}
  let user2 = User {userId = 2, userName = "Bob", userEmail = "bob@example.com"}
  let users = [user1, user2]

  -- Encode the list of users to JSON
  let jsonOutput = encode users

  -- Write the JSON to a file
  BS.writeFile "users.json" jsonOutput
  putStrLn "JSON data saved to users.json"
