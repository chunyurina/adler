class Yesno < ActiveHash::Base
  self.data = [{id: 1, name: 'YES', index: 1}, {id: 2, name: 'NO', index:1}, {id: 10, name: 'YES',index:2}, {id:20, name: 'NO', index:2}, {id:100, name: 'YES', index:3}, {id:200, name:'NO',index: 3}]
end