class firewall_mac (
  Integer $state
){
  defines::defaults {'/Library/Preferences/com.apple.alf':
    domain          => '/Library/Preferences/com.apple.alf',
    key             => 'globalstate',
    type            => int,
    desiredstate    => $state,
  }
}
