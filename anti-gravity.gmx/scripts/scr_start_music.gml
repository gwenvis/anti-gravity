if(donttrigger)
exit

var musicmanager = instance_find(obj_music_manager, 0);

with musicmanager {
    if(!musicplaying) {
        audio_channel_num(200);
        s_drum = audio_play_sound(drums, 1, true);
        s_bass = audio_play_sound(bass,1,true);
        s_instruments = audio_play_sound(instruments, 1, true);
        s_melody = audio_play_sound(melody, 1, true);
        
        
        audio_sound_gain(s_drum, 0, 0)
        audio_sound_gain(s_bass, 0, 0)
        audio_sound_gain(s_instruments, 0, 0)
        audio_sound_gain(s_melody, 0, 0)
        audio_sound_gain(s_drum, 1, 2000);
        show_debug_message("hey");
        musicplaying = true;
    }
    
    if(playnum == 1)
        audio_sound_gain(s_bass, 1, 2000)
    else if(playnum == 3) 
        audio_sound_gain(s_instruments, 1, 2000)
    else if(playnum == 4)
        audio_sound_gain(s_melody, 1, 2000);
    
    playnum++;
}
