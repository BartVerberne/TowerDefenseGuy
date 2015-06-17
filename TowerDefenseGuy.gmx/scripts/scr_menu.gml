switch (mpos)
{
    case 0: setWaveMode(); room_goto(tutorial0); break;
    case 1: setKillerMode(); room_goto(tutorial0); break;
    case 2: break;
    case 3: break;
    case 4: game_end(); break;
}