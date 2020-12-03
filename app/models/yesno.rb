class Yesno < ActiveHash::Base
  self.data = [{id: 1, name: 'YES'}, {id: 2, name: 'NO'}, {id: 10, name: 'YES'}, {id:20, name: 'NO'}, {id:100, name: 'YES'}, {id:200, name:'NO'}]
end