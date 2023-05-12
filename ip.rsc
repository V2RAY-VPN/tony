/system script
add name=getPublicIP source={
  :global publicIP;
  /tool fetch url="http://ipinfo.io/ip" mode=http dst-path=("/publicIP.txt");
  :local publicIPFromFile [/file get publicIP.txt contents];
  :set publicIP $publicIPFromFile;
  :put ("Public IP: " . $publicIP);
  /file remove publicIP.txt;
}
