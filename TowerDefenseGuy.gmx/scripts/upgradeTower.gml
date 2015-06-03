var towerType = argument0;
var towerID = argument1;

with(towerID) {

    switch(towerType)
    {
        case Grid.GRID_TOWER_0 : 
            if (myLevel < 2) if (OB_Game.basegoldupgrade[myLevel] <= global.gold) { 
                global.gold -= OB_Game.basegoldupgrade[myLevel];
                upgradeTower_0(towerID);        
            } break;
        case Grid.GRID_HEAVY_TOWER : 
            if (myLevel < 2) if (OB_Game.heavygoldupgrade[myLevel] <= global.gold) { 
                global.gold -= OB_Game.heavygoldupgrade[myLevel];
                upgradeHeavyTower(towerID);       
            } break;
        case Grid.GRID_SNIPER_TOWER : 
            if (myLevel < 2) if (OB_Game.snipergoldupgrade[myLevel] <= global.gold) { 
                global.gold -= OB_Game.snipergoldupgrade[myLevel];
                upgradeSniperTower(towerID); 
            } break;
        case Grid.GRID_SPLITTER_TOWER : 
            if (myLevel < 2) if (OB_Game.snipergoldupgrade[myLevel] <= global.gold) { 
                global.gold -= OB_Game.snipergoldupgrade[myLevel];
                upgradeSplitterTower(towerID);
            } break;
    }
    
}
