class firewall_mac {
  $state = lookup(firewall_mac_state)
  defines::defaults {'/Library/Preferences/com.apple.alf':
    domain          => '/Library/Preferences/com.apple.alf',
    key             => 'globalstate',
    type            => int,
    desiredstate    => $state,
  }
}
