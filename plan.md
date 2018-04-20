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
- is_full?() bool

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
- pay(amount: Integer) bool
- has_enough_money?(amount: Integer) bool
