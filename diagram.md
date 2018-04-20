# Room
## Properties
- songs: Song[]
- guests: Guest[]
- capacity: Integer
- cost: Integer
## Methods
- check_in(guest: Guest)
- check_out(guest: Guest)
- add_song(song: Song)
- is_full?()

# Song
## Properties
- name: String
- artist: String
## Methods
- 

# Guest
## Properties
- name: String
- money: Integer
## Methods
- spend_money(amount: Integer)
- has_enough_money?(amount: Integer)
