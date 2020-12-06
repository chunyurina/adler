class Question < ActiveHash::Base
  self.data = [{id: 1, name: 'あなたは今落ち込んでいますか？'}, {id: 2, name: 'あなたは今やる気がありますか？'},{id:3, name: 'あなたは今仕事に行きたいですか？'}]
end