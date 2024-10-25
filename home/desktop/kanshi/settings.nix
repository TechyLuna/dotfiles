{ config, pkgs, ... }:
{
  services.kanshi.settings = [
    {
      profile.outputs = [
        {
          criteria = "GIGA-BYTE TECHNOLOGY CO., LTD. G27Q 21502B003480";
          mode = "2560x1440@144";
          position = "0,0";
          adaptiveSync = true;
          status = "enable";
        }
        {
          criteria = "LG Electronics L194WT 0x000627AF";
          mode = "1440x900@59.887";
          position = "2560,540";
          status = "enable";
        }
        {
          criteria = "Unknown-1";
          status = "disable";
        }
      ];
    }
  ];
}
