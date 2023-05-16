{-# language OverloadedStrings #-}

module Main where

main :: IO ()
main = undefined

-- |
-- 会話相手の内容に対しての返答内容を生成する
--
talk :: Text -> IO Text

data Speaker
  = {
    }

-- |
-- 返答内容のテキストを読み上げる
--
speaking :: Speaker -> Text -> IO (Text, Speaker)

data Listener
  = {
    }

-- ここの型どーしよ?
-- 実用というか想定: マイクから音声を受け取る
-- 単体テスト?可能な理想: 音声データor音声ファイルを受け取る
--
-- たぶんHaskell内部で実装するというより、どっかのAIのDocker Image使うかAPI叩く気がする
-- どうやって渡すのがいいんだろ?
--
data Voice = undefined
 
-- |
-- 音声として会話内容を理解しテキストへ落とす
--
listen :: Listener -> Voice -> IO Text

-- |
-- 会話音声に対して回答(コミュニケーション)する
--
communicate = speaking . talk . listen
