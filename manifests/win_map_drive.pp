define win_map_drive(
  String drive_letter = 'm',
  String user = 'Guest'
){

  exec { "mapping ${title} to drive ${drive_letter}":
    command => "C:\\Windows\\System32\\net.exe use ${drive_letter}: ${title} /USER:${user}",
    unless  => "C:\\Windows\\System32\\cmd.exe /c \"if exist ${title} (exit 0) else (exit 1)\",
  }
}
