# Notes

## Commands

```Bash
az login
az login --service-principal -u "CLIENTID" -p "KEYSECRET" --tenant "TENANTID"
az group create --location 'westeurope' --name 'bachelorproef-rg'
az deployment group create --name 'deploybp' --resource-group 'bachelorproef-rg' --template-file 'main.bicep' --parameters 'param.json'
```

```Bash
az vm image list --output table
az vm image list --all --output table
az vm image list --all --offer Windows-10 --publisher MicrosoftWindowsDesktop --output table
```

## Links

- [Azure Marketplace for OS](https://azuremarketplace.microsoft.com/en-us/marketplace/apps/category/compute?page=1&subcategories=operating-systems)
- [Azure Marketplace with CLI](https://learn.microsoft.com/en-us/azure/virtual-machines/linux/cli-ps-findimage)

## Param and outputs

```json
"linuxFxVersion": {
    "value": "JAVA|17-java17"
}

"linuxFxVersion": {
    "value": "DOTNETCORE|7.0"
}

"linuxFxVersion": {
    "value": "PYTHON|3.12" // ENKEL LINUX
}

"linuxFxVersion": {
    "value": "PHP|8.2" // ENKEL LINUX
}

"linuxFxVersion": {
    "value": "NODE|20-lts" // ENKEL LINUX
}
```

```json
// WINDOWS
"imagePublisher": {
    "value": "MicrosoftWindowsDesktop"
},
"imageOffer": {
    "value": "Windows-10"
},
"imageSku": {
    "value": "win10-22h2-pron"
},
"imageVersion": {
    "value": "latest"
}

// LINUX
"imagePublisher": {
    "value": "Canonical"
},
"imageOffer": {
    "value": "0001-com-ubuntu-server-jammy"
},
"imageSku": {
    "value": "22_04-lts-gen2"
},
"imageVersion": {
    "value": "latest"
}
```

```Console
Architecture    Offer                      Publisher                         Sku                          Urn                                                                                   Version
--------------  -------------------------  --------------------------------  ---------------------------  ------------------------------------------------------------------------------------  ---------------------
x64             Windows-10                 MicrosoftWindowsDesktop           19h1-ent-gensecond           MicrosoftWindowsDesktop:Windows-10:19h1-ent-gensecond:18362.1198.2011031735           18362.1198.2011031735
x64             Windows-10                 MicrosoftWindowsDesktop           19h1-ent-gensecond           MicrosoftWindowsDesktop:Windows-10:19h1-ent-gensecond:18362.1256.2012032308           18362.1256.2012032308
x64             Windows-10                 MicrosoftWindowsDesktop           19h1-entn-gensecond          MicrosoftWindowsDesktop:Windows-10:19h1-entn-gensecond:18362.1198.2011031735          18362.1198.2011031735
x64             Windows-10                 MicrosoftWindowsDesktop           19h1-entn-gensecond          MicrosoftWindowsDesktop:Windows-10:19h1-entn-gensecond:18362.1256.2012032308          18362.1256.2012032308
x64             Windows-10                 MicrosoftWindowsDesktop           19h1-pro-gensecond           MicrosoftWindowsDesktop:Windows-10:19h1-pro-gensecond:18362.1198.2011031735           18362.1198.2011031735
x64             Windows-10                 MicrosoftWindowsDesktop           19h1-pro-gensecond           MicrosoftWindowsDesktop:Windows-10:19h1-pro-gensecond:18362.1256.2012032308           18362.1256.2012032308
x64             Windows-10                 MicrosoftWindowsDesktop           19h1-pro-zh-cn-gensecond     MicrosoftWindowsDesktop:Windows-10:19h1-pro-zh-cn-gensecond:18362.1198.2011031735     18362.1198.2011031735
x64             Windows-10                 MicrosoftWindowsDesktop           19h1-pro-zh-cn-gensecond     MicrosoftWindowsDesktop:Windows-10:19h1-pro-zh-cn-gensecond:18362.1256.2012032308     18362.1256.2012032308
x64             Windows-10                 MicrosoftWindowsDesktop           19h1-pron-gensecond          MicrosoftWindowsDesktop:Windows-10:19h1-pron-gensecond:18362.1198.2011031735          18362.1198.2011031735
x64             Windows-10                 MicrosoftWindowsDesktop           19h1-pron-gensecond          MicrosoftWindowsDesktop:Windows-10:19h1-pron-gensecond:18362.1256.2012032308          18362.1256.2012032308
x64             nginx-on-windows-10pro     apps-4-rent                       nginx-on-windows-10pro       apps-4-rent:nginx-on-windows-10pro:nginx-on-windows-10pro:0.0.1                       0.0.1
x64             Windows-10                 MicrosoftWindowsDesktop           19h2-pro-g2                  MicrosoftWindowsDesktop:Windows-10:19h2-pro-g2:18363.1500.2104092145                  18363.1500.2104092145
x64             Windows-10                 MicrosoftWindowsDesktop           19h2-pro-g2                  MicrosoftWindowsDesktop:Windows-10:19h2-pro-g2:18363.1556.2105042120                  18363.1556.2105042120
x64             racket-on-windows-10pro    apps-4-rent                       racket-on-windows-10pro      apps-4-rent:racket-on-windows-10pro:racket-on-windows-10pro:0.0.1                     0.0.1
x64             Windows-10                 MicrosoftWindowsDesktop           19h2-pro-zh-cn-g2            MicrosoftWindowsDesktop:Windows-10:19h2-pro-zh-cn-g2:18363.1500.2104092145            18363.1500.2104092145
x64             Windows-10                 MicrosoftWindowsDesktop           19h2-pro-zh-cn-g2            MicrosoftWindowsDesktop:Windows-10:19h2-pro-zh-cn-g2:18363.1556.2105042120            18363.1556.2105042120
x64             Windows-10                 MicrosoftWindowsDesktop           19h2-pron-g2                 MicrosoftWindowsDesktop:Windows-10:19h2-pron-g2:18363.1500.2104092145                 18363.1500.2104092145
x64             Windows-10                 MicrosoftWindowsDesktop           19h2-pron-g2                 MicrosoftWindowsDesktop:Windows-10:19h2-pron-g2:18363.1556.2105042120                 18363.1556.2105042120
x64             Windows-10                 MicrosoftWindowsDesktop           20h2-ent                     MicrosoftWindowsDesktop:Windows-10:20h2-ent:19042.2846.230329                         19042.2846.230329
x64             Windows-10                 MicrosoftWindowsDesktop           20h2-ent                     MicrosoftWindowsDesktop:Windows-10:20h2-ent:19042.2965.230505                         19042.2965.230505
x64             Windows-10                 MicrosoftWindowsDesktop           20h2-ent-g2                  MicrosoftWindowsDesktop:Windows-10:20h2-ent-g2:19042.2846.230329                      19042.2846.230329
x64             Windows-10                 MicrosoftWindowsDesktop           20h2-ent-g2                  MicrosoftWindowsDesktop:Windows-10:20h2-ent-g2:19042.2965.230505                      19042.2965.230505
x64             Windows-10                 MicrosoftWindowsDesktop           20h2-entn                    MicrosoftWindowsDesktop:Windows-10:20h2-entn:19042.2846.230329                        19042.2846.230329
x64             Windows-10                 MicrosoftWindowsDesktop           20h2-entn                    MicrosoftWindowsDesktop:Windows-10:20h2-entn:19042.2965.230505                        19042.2965.230505
x64             Windows-10                 MicrosoftWindowsDesktop           20h2-entn-g2                 MicrosoftWindowsDesktop:Windows-10:20h2-entn-g2:19042.2846.230329                     19042.2846.230329
x64             Windows-10                 MicrosoftWindowsDesktop           20h2-entn-g2                 MicrosoftWindowsDesktop:Windows-10:20h2-entn-g2:19042.2965.230505                     19042.2965.230505
x64             Windows-10                 MicrosoftWindowsDesktop           20h2-evd                     MicrosoftWindowsDesktop:Windows-10:20h2-evd:19042.2846.230329                         19042.2846.230329
x64             Windows-10                 MicrosoftWindowsDesktop           20h2-evd                     MicrosoftWindowsDesktop:Windows-10:20h2-evd:19042.2965.230505                         19042.2965.230505
x64             Windows-10                 MicrosoftWindowsDesktop           20h2-evd-g2                  MicrosoftWindowsDesktop:Windows-10:20h2-evd-g2:19042.2846.230329                      19042.2846.230329
x64             Windows-10                 MicrosoftWindowsDesktop           20h2-evd-g2                  MicrosoftWindowsDesktop:Windows-10:20h2-evd-g2:19042.2965.230505                      19042.2965.230505
x64             Windows-10                 MicrosoftWindowsDesktop           20h2-pro                     MicrosoftWindowsDesktop:Windows-10:20h2-pro:19042.985.2105052112                      19042.985.2105052112
x64             Windows-10                 MicrosoftWindowsDesktop           rs1-enterprise               MicrosoftWindowsDesktop:Windows-10:rs1-enterprise:14393.6167.230804                   14393.6167.230804
x64             Windows-10                 MicrosoftWindowsDesktop           rs1-enterprise               MicrosoftWindowsDesktop:Windows-10:rs1-enterprise:14393.6252.230905                   14393.6252.230905
x64             Windows-10                 MicrosoftWindowsDesktop           rs1-enterprise               MicrosoftWindowsDesktop:Windows-10:rs1-enterprise:14393.6351.231007                   14393.6351.231007
x64             Windows-10                 MicrosoftWindowsDesktop           rs1-enterprise               MicrosoftWindowsDesktop:Windows-10:rs1-enterprise:14393.6452.231109                   14393.6452.231109
x64             Windows-10                 MicrosoftWindowsDesktop           rs1-enterprise               MicrosoftWindowsDesktop:Windows-10:rs1-enterprise:14393.6529.231202                   14393.6529.231202
x64             Windows-10                 MicrosoftWindowsDesktop           rs1-enterprise-g2            MicrosoftWindowsDesktop:Windows-10:rs1-enterprise-g2:14393.6167.230804                14393.6167.230804
x64             Windows-10                 MicrosoftWindowsDesktop           rs1-enterprise-g2            MicrosoftWindowsDesktop:Windows-10:rs1-enterprise-g2:14393.6252.230905                14393.6252.230905
x64             Windows-10                 MicrosoftWindowsDesktop           rs1-enterprise-g2            MicrosoftWindowsDesktop:Windows-10:rs1-enterprise-g2:14393.6351.231007                14393.6351.231007
x64             Windows-10                 MicrosoftWindowsDesktop           rs1-enterprise-g2            MicrosoftWindowsDesktop:Windows-10:rs1-enterprise-g2:14393.6452.231109                14393.6452.231109
x64             Windows-10                 MicrosoftWindowsDesktop           rs1-enterprise-g2            MicrosoftWindowsDesktop:Windows-10:rs1-enterprise-g2:14393.6529.231202                14393.6529.231202
x64             Windows-10                 MicrosoftWindowsDesktop           rs1-enterprisen              MicrosoftWindowsDesktop:Windows-10:rs1-enterprisen:14393.6167.230804                  14393.6167.230804
x64             Windows-10                 MicrosoftWindowsDesktop           rs1-enterprisen              MicrosoftWindowsDesktop:Windows-10:rs1-enterprisen:14393.6252.230905                  14393.6252.230905
x64             Windows-10                 MicrosoftWindowsDesktop           rs1-enterprisen              MicrosoftWindowsDesktop:Windows-10:rs1-enterprisen:14393.6351.231007                  14393.6351.231007
x64             Windows-10                 MicrosoftWindowsDesktop           rs1-enterprisen              MicrosoftWindowsDesktop:Windows-10:rs1-enterprisen:14393.6452.231109                  14393.6452.231109
x64             Windows-10                 MicrosoftWindowsDesktop           rs1-enterprisen              MicrosoftWindowsDesktop:Windows-10:rs1-enterprisen:14393.6529.231202                  14393.6529.231202
x64             Windows-10                 MicrosoftWindowsDesktop           rs1-enterprisen-g2           MicrosoftWindowsDesktop:Windows-10:rs1-enterprisen-g2:14393.6167.230804               14393.6167.230804
x64             Windows-10                 MicrosoftWindowsDesktop           rs1-enterprisen-g2           MicrosoftWindowsDesktop:Windows-10:rs1-enterprisen-g2:14393.6252.230905               14393.6252.230905
x64             Windows-10                 MicrosoftWindowsDesktop           rs1-enterprisen-g2           MicrosoftWindowsDesktop:Windows-10:rs1-enterprisen-g2:14393.6351.231007               14393.6351.231007
x64             Windows-10                 MicrosoftWindowsDesktop           rs1-enterprisen-g2           MicrosoftWindowsDesktop:Windows-10:rs1-enterprisen-g2:14393.6452.231109               14393.6452.231109
x64             Windows-10                 MicrosoftWindowsDesktop           rs1-enterprisen-g2           MicrosoftWindowsDesktop:Windows-10:rs1-enterprisen-g2:14393.6529.231202               14393.6529.231202
x64             Windows-10                 MicrosoftWindowsDesktop           rs4-pro-g2                   MicrosoftWindowsDesktop:Windows-10:rs4-pro-g2:17134.1246.2001090113                   17134.1246.2001090113
x64             Windows-10                 MicrosoftWindowsDesktop           rs5-enterprise               MicrosoftWindowsDesktop:Windows-10:rs5-enterprise:17763.4737.230802                   17763.4737.230802
x64             Windows-10                 MicrosoftWindowsDesktop           rs5-enterprise               MicrosoftWindowsDesktop:Windows-10:rs5-enterprise:17763.4851.230905                   17763.4851.230905
x64             Windows-10                 MicrosoftWindowsDesktop           rs5-enterprise               MicrosoftWindowsDesktop:Windows-10:rs5-enterprise:17763.4974.231003                   17763.4974.231003
x64             Windows-10                 MicrosoftWindowsDesktop           rs5-enterprise               MicrosoftWindowsDesktop:Windows-10:rs5-enterprise:17763.5122.231109                   17763.5122.231109
x64             Windows-10                 MicrosoftWindowsDesktop           rs5-enterprise               MicrosoftWindowsDesktop:Windows-10:rs5-enterprise:17763.5206.231202                   17763.5206.231202
x64             Windows-10                 MicrosoftWindowsDesktop           rs5-enterprise-g2            MicrosoftWindowsDesktop:Windows-10:rs5-enterprise-g2:17763.4737.230802                17763.4737.230802
x64             Windows-10                 MicrosoftWindowsDesktop           rs5-enterprise-g2            MicrosoftWindowsDesktop:Windows-10:rs5-enterprise-g2:17763.4851.230905                17763.4851.230905
x64             Windows-10                 MicrosoftWindowsDesktop           rs5-enterprise-g2            MicrosoftWindowsDesktop:Windows-10:rs5-enterprise-g2:17763.4974.231003                17763.4974.231003
x64             Windows-10                 MicrosoftWindowsDesktop           rs5-enterprise-g2            MicrosoftWindowsDesktop:Windows-10:rs5-enterprise-g2:17763.5122.231109                17763.5122.231109
x64             Windows-10                 MicrosoftWindowsDesktop           rs5-enterprise-g2            MicrosoftWindowsDesktop:Windows-10:rs5-enterprise-g2:17763.5206.231202                17763.5206.231202
x64             Windows-10                 MicrosoftWindowsDesktop           rs5-enterprise-standard-g2   MicrosoftWindowsDesktop:Windows-10:rs5-enterprise-standard-g2:17763.1935.2105080716   17763.1935.2105080716
x64             Windows-10                 MicrosoftWindowsDesktop           rs5-enterprisen              MicrosoftWindowsDesktop:Windows-10:rs5-enterprisen:17763.4737.230802                  17763.4737.230802
x64             Windows-10                 MicrosoftWindowsDesktop           rs5-enterprisen              MicrosoftWindowsDesktop:Windows-10:rs5-enterprisen:17763.4851.230905                  17763.4851.230905
x64             Windows-10                 MicrosoftWindowsDesktop           rs5-enterprisen              MicrosoftWindowsDesktop:Windows-10:rs5-enterprisen:17763.4974.231003                  17763.4974.231003
x64             Windows-10                 MicrosoftWindowsDesktop           rs5-enterprisen              MicrosoftWindowsDesktop:Windows-10:rs5-enterprisen:17763.5122.231109                  17763.5122.231109
x64             Windows-10                 MicrosoftWindowsDesktop           rs5-enterprisen              MicrosoftWindowsDesktop:Windows-10:rs5-enterprisen:17763.5206.231202                  17763.5206.231202
x64             Windows-10                 MicrosoftWindowsDesktop           rs5-enterprisen-g2           MicrosoftWindowsDesktop:Windows-10:rs5-enterprisen-g2:17763.4737.230802               17763.4737.230802
x64             Windows-10                 MicrosoftWindowsDesktop           rs5-enterprisen-g2           MicrosoftWindowsDesktop:Windows-10:rs5-enterprisen-g2:17763.4851.230905               17763.4851.230905
x64             Windows-10                 MicrosoftWindowsDesktop           rs5-enterprisen-g2           MicrosoftWindowsDesktop:Windows-10:rs5-enterprisen-g2:17763.4974.231003               17763.4974.231003
x64             Windows-10                 MicrosoftWindowsDesktop           rs5-enterprisen-g2           MicrosoftWindowsDesktop:Windows-10:rs5-enterprisen-g2:17763.5122.231109               17763.5122.231109
x64             Windows-10                 MicrosoftWindowsDesktop           rs5-enterprisen-g2           MicrosoftWindowsDesktop:Windows-10:rs5-enterprisen-g2:17763.5206.231202               17763.5206.231202
x64             Windows-10                 MicrosoftWindowsDesktop           rs5-enterprisen-standard-g2  MicrosoftWindowsDesktop:Windows-10:rs5-enterprisen-standard-g2:17763.2300.2111032328  17763.2300.2111032328
x64             Windows-10                 MicrosoftWindowsDesktop           rs5-enterprisen-standard-g2  MicrosoftWindowsDesktop:Windows-10:rs5-enterprisen-standard-g2:17763.2366.2112070401  17763.2366.2112070401
x64             Windows-10                 MicrosoftWindowsDesktop           rs5-evd-g2                   MicrosoftWindowsDesktop:Windows-10:rs5-evd-g2:17763.2300.2111032328                   17763.2300.2111032328
x64             Windows-10                 MicrosoftWindowsDesktop           rs5-evd-g2                   MicrosoftWindowsDesktop:Windows-10:rs5-evd-g2:17763.2366.2112070401                   17763.2366.2112070401
x64             Windows-10                 MicrosoftWindowsDesktop           rs5-pro-g2                   MicrosoftWindowsDesktop:Windows-10:rs5-pro-g2:17763.1518.2010132039                   17763.1518.2010132039
x64             Windows-10                 MicrosoftWindowsDesktop           rs5-pro-g2                   MicrosoftWindowsDesktop:Windows-10:rs5-pro-g2:17763.1577.2011031610                   17763.1577.2011031610
x64             Windows-10                 MicrosoftWindowsDesktop           rs5-pro-zh-cn-g2             MicrosoftWindowsDesktop:Windows-10:rs5-pro-zh-cn-g2:17763.1518.2010132039             17763.1518.2010132039
x64             Windows-10                 MicrosoftWindowsDesktop           rs5-pro-zh-cn-g2             MicrosoftWindowsDesktop:Windows-10:rs5-pro-zh-cn-g2:17763.1577.2011031610             17763.1577.2011031610
x64             Windows-10                 MicrosoftWindowsDesktop           rs5-pron-g2                  MicrosoftWindowsDesktop:Windows-10:rs5-pron-g2:17763.1518.2010132039                  17763.1518.2010132039
x64             Windows-10                 MicrosoftWindowsDesktop           rs5-pron-g2                  MicrosoftWindowsDesktop:Windows-10:rs5-pron-g2:17763.1577.2011031610                  17763.1577.2011031610
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-avd               MicrosoftWindowsDesktop:Windows-10:win10-21h2-avd:19044.3324.230801                   19044.3324.230801
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-avd               MicrosoftWindowsDesktop:Windows-10:win10-21h2-avd:19044.3448.230831                   19044.3448.230831
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-avd               MicrosoftWindowsDesktop:Windows-10:win10-21h2-avd:19044.3570.231001                   19044.3570.231001
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-avd               MicrosoftWindowsDesktop:Windows-10:win10-21h2-avd:19044.3693.231109                   19044.3693.231109
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-avd               MicrosoftWindowsDesktop:Windows-10:win10-21h2-avd:19044.3803.231204                   19044.3803.231204
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-avd-g2            MicrosoftWindowsDesktop:Windows-10:win10-21h2-avd-g2:19044.3324.230801                19044.3324.230801
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-avd-g2            MicrosoftWindowsDesktop:Windows-10:win10-21h2-avd-g2:19044.3448.230831                19044.3448.230831
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-avd-g2            MicrosoftWindowsDesktop:Windows-10:win10-21h2-avd-g2:19044.3570.231001                19044.3570.231001
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-avd-g2            MicrosoftWindowsDesktop:Windows-10:win10-21h2-avd-g2:19044.3693.231109                19044.3693.231109
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-avd-g2            MicrosoftWindowsDesktop:Windows-10:win10-21h2-avd-g2:19044.3803.231204                19044.3803.231204
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-ent               MicrosoftWindowsDesktop:Windows-10:win10-21h2-ent:19044.2130.221006                   19044.2130.221006
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-ent               MicrosoftWindowsDesktop:Windows-10:win10-21h2-ent:19044.3324.230801                   19044.3324.230801
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-ent               MicrosoftWindowsDesktop:Windows-10:win10-21h2-ent:19044.3448.230831                   19044.3448.230831
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-ent               MicrosoftWindowsDesktop:Windows-10:win10-21h2-ent:19044.3570.231001                   19044.3570.231001
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-ent               MicrosoftWindowsDesktop:Windows-10:win10-21h2-ent:19044.3693.231109                   19044.3693.231109
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-ent               MicrosoftWindowsDesktop:Windows-10:win10-21h2-ent:19044.3803.231204                   19044.3803.231204
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-ent-g2            MicrosoftWindowsDesktop:Windows-10:win10-21h2-ent-g2:19044.3324.230801                19044.3324.230801
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-ent-g2            MicrosoftWindowsDesktop:Windows-10:win10-21h2-ent-g2:19044.3448.230831                19044.3448.230831
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-ent-g2            MicrosoftWindowsDesktop:Windows-10:win10-21h2-ent-g2:19044.3570.231001                19044.3570.231001
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-ent-g2            MicrosoftWindowsDesktop:Windows-10:win10-21h2-ent-g2:19044.3693.231109                19044.3693.231109
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-ent-g2            MicrosoftWindowsDesktop:Windows-10:win10-21h2-ent-g2:19044.3803.231204                19044.3803.231204
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-ent-ltsc          MicrosoftWindowsDesktop:Windows-10:win10-21h2-ent-ltsc:19044.3324.230801              19044.3324.230801
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-ent-ltsc          MicrosoftWindowsDesktop:Windows-10:win10-21h2-ent-ltsc:19044.3448.230831              19044.3448.230831
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-ent-ltsc          MicrosoftWindowsDesktop:Windows-10:win10-21h2-ent-ltsc:19044.3570.231001              19044.3570.231001
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-ent-ltsc          MicrosoftWindowsDesktop:Windows-10:win10-21h2-ent-ltsc:19044.3693.231109              19044.3693.231109
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-ent-ltsc          MicrosoftWindowsDesktop:Windows-10:win10-21h2-ent-ltsc:19044.3803.231204              19044.3803.231204
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-ent-ltsc-g2       MicrosoftWindowsDesktop:Windows-10:win10-21h2-ent-ltsc-g2:19044.3324.230801           19044.3324.230801
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-ent-ltsc-g2       MicrosoftWindowsDesktop:Windows-10:win10-21h2-ent-ltsc-g2:19044.3448.230831           19044.3448.230831
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-ent-ltsc-g2       MicrosoftWindowsDesktop:Windows-10:win10-21h2-ent-ltsc-g2:19044.3570.231001           19044.3570.231001
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-ent-ltsc-g2       MicrosoftWindowsDesktop:Windows-10:win10-21h2-ent-ltsc-g2:19044.3693.231109           19044.3693.231109
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-ent-ltsc-g2       MicrosoftWindowsDesktop:Windows-10:win10-21h2-ent-ltsc-g2:19044.3803.231204           19044.3803.231204
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-entn              MicrosoftWindowsDesktop:Windows-10:win10-21h2-entn:19044.2130.221006                  19044.2130.221006
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-entn              MicrosoftWindowsDesktop:Windows-10:win10-21h2-entn:19044.3324.230801                  19044.3324.230801
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-entn              MicrosoftWindowsDesktop:Windows-10:win10-21h2-entn:19044.3448.230831                  19044.3448.230831
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-entn              MicrosoftWindowsDesktop:Windows-10:win10-21h2-entn:19044.3570.231001                  19044.3570.231001
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-entn              MicrosoftWindowsDesktop:Windows-10:win10-21h2-entn:19044.3693.231109                  19044.3693.231109
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-entn              MicrosoftWindowsDesktop:Windows-10:win10-21h2-entn:19044.3803.231204                  19044.3803.231204
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-entn-g2           MicrosoftWindowsDesktop:Windows-10:win10-21h2-entn-g2:19044.3324.230801               19044.3324.230801
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-entn-g2           MicrosoftWindowsDesktop:Windows-10:win10-21h2-entn-g2:19044.3448.230831               19044.3448.230831
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-entn-g2           MicrosoftWindowsDesktop:Windows-10:win10-21h2-entn-g2:19044.3570.231001               19044.3570.231001
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-entn-g2           MicrosoftWindowsDesktop:Windows-10:win10-21h2-entn-g2:19044.3693.231109               19044.3693.231109
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-entn-g2           MicrosoftWindowsDesktop:Windows-10:win10-21h2-entn-g2:19044.3803.231204               19044.3803.231204
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-entn-ltsc         MicrosoftWindowsDesktop:Windows-10:win10-21h2-entn-ltsc:19044.3324.230801             19044.3324.230801
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-entn-ltsc         MicrosoftWindowsDesktop:Windows-10:win10-21h2-entn-ltsc:19044.3448.230831             19044.3448.230831
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-entn-ltsc         MicrosoftWindowsDesktop:Windows-10:win10-21h2-entn-ltsc:19044.3570.231001             19044.3570.231001
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-entn-ltsc         MicrosoftWindowsDesktop:Windows-10:win10-21h2-entn-ltsc:19044.3693.231109             19044.3693.231109
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-entn-ltsc         MicrosoftWindowsDesktop:Windows-10:win10-21h2-entn-ltsc:19044.3803.231204             19044.3803.231204
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-entn-ltsc-g2      MicrosoftWindowsDesktop:Windows-10:win10-21h2-entn-ltsc-g2:19044.3324.230801          19044.3324.230801
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-entn-ltsc-g2      MicrosoftWindowsDesktop:Windows-10:win10-21h2-entn-ltsc-g2:19044.3448.230831          19044.3448.230831
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-entn-ltsc-g2      MicrosoftWindowsDesktop:Windows-10:win10-21h2-entn-ltsc-g2:19044.3570.231001          19044.3570.231001
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-entn-ltsc-g2      MicrosoftWindowsDesktop:Windows-10:win10-21h2-entn-ltsc-g2:19044.3693.231109          19044.3693.231109
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-entn-ltsc-g2      MicrosoftWindowsDesktop:Windows-10:win10-21h2-entn-ltsc-g2:19044.3803.231204          19044.3803.231204
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-pro               MicrosoftWindowsDesktop:Windows-10:win10-21h2-pro:19044.2130.221006                   19044.2130.221006
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-pro               MicrosoftWindowsDesktop:Windows-10:win10-21h2-pro:19044.3086.230609                   19044.3086.230609
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-pro               MicrosoftWindowsDesktop:Windows-10:win10-21h2-pro:19044.3086.230621                   19044.3086.230621
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-pro-g2            MicrosoftWindowsDesktop:Windows-10:win10-21h2-pro-g2:19044.2130.221006                19044.2130.221006
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-pro-g2            MicrosoftWindowsDesktop:Windows-10:win10-21h2-pro-g2:19044.3086.230609                19044.3086.230609
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-pro-g2            MicrosoftWindowsDesktop:Windows-10:win10-21h2-pro-g2:19044.3086.230621                19044.3086.230621
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-pro-zh-cn         MicrosoftWindowsDesktop:Windows-10:win10-21h2-pro-zh-cn:19044.3086.230609             19044.3086.230609
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-pro-zh-cn         MicrosoftWindowsDesktop:Windows-10:win10-21h2-pro-zh-cn:19044.3086.230621             19044.3086.230621
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-pro-zh-cn-g2      MicrosoftWindowsDesktop:Windows-10:win10-21h2-pro-zh-cn-g2:19044.3086.230609          19044.3086.230609
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-pro-zh-cn-g2      MicrosoftWindowsDesktop:Windows-10:win10-21h2-pro-zh-cn-g2:19044.3086.230621          19044.3086.230621
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-pron              MicrosoftWindowsDesktop:Windows-10:win10-21h2-pron:19044.3086.230609                  19044.3086.230609
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-pron              MicrosoftWindowsDesktop:Windows-10:win10-21h2-pron:19044.3086.230621                  19044.3086.230621
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-pron-g2           MicrosoftWindowsDesktop:Windows-10:win10-21h2-pron-g2:19044.3086.230609               19044.3086.230609
x64             Windows-10                 MicrosoftWindowsDesktop           win10-21h2-pron-g2           MicrosoftWindowsDesktop:Windows-10:win10-21h2-pron-g2:19044.3086.230621               19044.3086.230621
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-avd               MicrosoftWindowsDesktop:Windows-10:win10-22h2-avd:19045.3324.230728                   19045.3324.230728
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-avd               MicrosoftWindowsDesktop:Windows-10:win10-22h2-avd:19045.3448.230831                   19045.3448.230831
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-avd               MicrosoftWindowsDesktop:Windows-10:win10-22h2-avd:19045.3570.231001                   19045.3570.231001
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-avd               MicrosoftWindowsDesktop:Windows-10:win10-22h2-avd:19045.3693.231109                   19045.3693.231109
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-avd               MicrosoftWindowsDesktop:Windows-10:win10-22h2-avd:19045.3803.231204                   19045.3803.231204
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-avd-g2            MicrosoftWindowsDesktop:Windows-10:win10-22h2-avd-g2:19045.3324.230728                19045.3324.230728
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-avd-g2            MicrosoftWindowsDesktop:Windows-10:win10-22h2-avd-g2:19045.3448.230831                19045.3448.230831
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-avd-g2            MicrosoftWindowsDesktop:Windows-10:win10-22h2-avd-g2:19045.3570.231001                19045.3570.231001
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-avd-g2            MicrosoftWindowsDesktop:Windows-10:win10-22h2-avd-g2:19045.3693.231109                19045.3693.231109
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-avd-g2            MicrosoftWindowsDesktop:Windows-10:win10-22h2-avd-g2:19045.3803.231204                19045.3803.231204
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-ent               MicrosoftWindowsDesktop:Windows-10:win10-22h2-ent:19045.3324.230728                   19045.3324.230728
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-ent               MicrosoftWindowsDesktop:Windows-10:win10-22h2-ent:19045.3448.230831                   19045.3448.230831
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-ent               MicrosoftWindowsDesktop:Windows-10:win10-22h2-ent:19045.3570.231001                   19045.3570.231001
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-ent               MicrosoftWindowsDesktop:Windows-10:win10-22h2-ent:19045.3693.231109                   19045.3693.231109
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-ent               MicrosoftWindowsDesktop:Windows-10:win10-22h2-ent:19045.3803.231204                   19045.3803.231204
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-ent-g2            MicrosoftWindowsDesktop:Windows-10:win10-22h2-ent-g2:19045.3324.230728                19045.3324.230728
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-ent-g2            MicrosoftWindowsDesktop:Windows-10:win10-22h2-ent-g2:19045.3448.230831                19045.3448.230831
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-ent-g2            MicrosoftWindowsDesktop:Windows-10:win10-22h2-ent-g2:19045.3570.231001                19045.3570.231001
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-ent-g2            MicrosoftWindowsDesktop:Windows-10:win10-22h2-ent-g2:19045.3693.231109                19045.3693.231109
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-ent-g2            MicrosoftWindowsDesktop:Windows-10:win10-22h2-ent-g2:19045.3803.231204                19045.3803.231204
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-entn              MicrosoftWindowsDesktop:Windows-10:win10-22h2-entn:19045.3324.230728                  19045.3324.230728
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-entn              MicrosoftWindowsDesktop:Windows-10:win10-22h2-entn:19045.3448.230831                  19045.3448.230831
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-entn              MicrosoftWindowsDesktop:Windows-10:win10-22h2-entn:19045.3570.231001                  19045.3570.231001
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-entn              MicrosoftWindowsDesktop:Windows-10:win10-22h2-entn:19045.3693.231109                  19045.3693.231109
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-entn              MicrosoftWindowsDesktop:Windows-10:win10-22h2-entn:19045.3803.231204                  19045.3803.231204
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-entn-g2           MicrosoftWindowsDesktop:Windows-10:win10-22h2-entn-g2:19045.3324.230728               19045.3324.230728
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-entn-g2           MicrosoftWindowsDesktop:Windows-10:win10-22h2-entn-g2:19045.3448.230831               19045.3448.230831
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-entn-g2           MicrosoftWindowsDesktop:Windows-10:win10-22h2-entn-g2:19045.3570.231001               19045.3570.231001
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-entn-g2           MicrosoftWindowsDesktop:Windows-10:win10-22h2-entn-g2:19045.3693.231109               19045.3693.231109
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-entn-g2           MicrosoftWindowsDesktop:Windows-10:win10-22h2-entn-g2:19045.3803.231204               19045.3803.231204
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-pro               MicrosoftWindowsDesktop:Windows-10:win10-22h2-pro:19045.3324.230728                   19045.3324.230728
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-pro               MicrosoftWindowsDesktop:Windows-10:win10-22h2-pro:19045.3448.230831                   19045.3448.230831
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-pro               MicrosoftWindowsDesktop:Windows-10:win10-22h2-pro:19045.3570.231001                   19045.3570.231001
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-pro               MicrosoftWindowsDesktop:Windows-10:win10-22h2-pro:19045.3693.231109                   19045.3693.231109
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-pro               MicrosoftWindowsDesktop:Windows-10:win10-22h2-pro:19045.3803.231204                   19045.3803.231204
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-pro-g2            MicrosoftWindowsDesktop:Windows-10:win10-22h2-pro-g2:19045.3324.230728                19045.3324.230728
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-pro-g2            MicrosoftWindowsDesktop:Windows-10:win10-22h2-pro-g2:19045.3448.230831                19045.3448.230831
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-pro-g2            MicrosoftWindowsDesktop:Windows-10:win10-22h2-pro-g2:19045.3570.231001                19045.3570.231001
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-pro-g2            MicrosoftWindowsDesktop:Windows-10:win10-22h2-pro-g2:19045.3693.231109                19045.3693.231109
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-pro-g2            MicrosoftWindowsDesktop:Windows-10:win10-22h2-pro-g2:19045.3803.231204                19045.3803.231204
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-pro-zh-cn         MicrosoftWindowsDesktop:Windows-10:win10-22h2-pro-zh-cn:19045.3324.230728             19045.3324.230728
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-pro-zh-cn         MicrosoftWindowsDesktop:Windows-10:win10-22h2-pro-zh-cn:19045.3448.230831             19045.3448.230831
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-pro-zh-cn         MicrosoftWindowsDesktop:Windows-10:win10-22h2-pro-zh-cn:19045.3570.231001             19045.3570.231001
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-pro-zh-cn         MicrosoftWindowsDesktop:Windows-10:win10-22h2-pro-zh-cn:19045.3693.231109             19045.3693.231109
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-pro-zh-cn         MicrosoftWindowsDesktop:Windows-10:win10-22h2-pro-zh-cn:19045.3803.231204             19045.3803.231204
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-pro-zh-cn-g2      MicrosoftWindowsDesktop:Windows-10:win10-22h2-pro-zh-cn-g2:19045.3324.230728          19045.3324.230728
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-pro-zh-cn-g2      MicrosoftWindowsDesktop:Windows-10:win10-22h2-pro-zh-cn-g2:19045.3448.230831          19045.3448.230831
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-pro-zh-cn-g2      MicrosoftWindowsDesktop:Windows-10:win10-22h2-pro-zh-cn-g2:19045.3570.231001          19045.3570.231001
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-pro-zh-cn-g2      MicrosoftWindowsDesktop:Windows-10:win10-22h2-pro-zh-cn-g2:19045.3693.231109          19045.3693.231109
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-pro-zh-cn-g2      MicrosoftWindowsDesktop:Windows-10:win10-22h2-pro-zh-cn-g2:19045.3803.231204          19045.3803.231204
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-pron              MicrosoftWindowsDesktop:Windows-10:win10-22h2-pron:19045.3324.230728                  19045.3324.230728
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-pron              MicrosoftWindowsDesktop:Windows-10:win10-22h2-pron:19045.3448.230831                  19045.3448.230831
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-pron              MicrosoftWindowsDesktop:Windows-10:win10-22h2-pron:19045.3570.231001                  19045.3570.231001
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-pron              MicrosoftWindowsDesktop:Windows-10:win10-22h2-pron:19045.3693.231109                  19045.3693.231109
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-pron              MicrosoftWindowsDesktop:Windows-10:win10-22h2-pron:19045.3803.231204                  19045.3803.231204
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-pron-g2           MicrosoftWindowsDesktop:Windows-10:win10-22h2-pron-g2:19045.3324.230728               19045.3324.230728
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-pron-g2           MicrosoftWindowsDesktop:Windows-10:win10-22h2-pron-g2:19045.3448.230831               19045.3448.230831
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-pron-g2           MicrosoftWindowsDesktop:Windows-10:win10-22h2-pron-g2:19045.3570.231001               19045.3570.231001
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-pron-g2           MicrosoftWindowsDesktop:Windows-10:win10-22h2-pron-g2:19045.3693.231109               19045.3693.231109
x64             Windows-10                 MicrosoftWindowsDesktop           win10-22h2-pron-g2           MicrosoftWindowsDesktop:Windows-10:win10-22h2-pron-g2:19045.3803.231204               19045.3803.231204
```