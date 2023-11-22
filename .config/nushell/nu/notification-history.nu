export def notif_history [] {                                                                                                                              
    dunstctl history | from json | get data | get 0 | get body | reject type
}
