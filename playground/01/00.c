
void entry(void){

    const char *string_hello_world = "Hello world from bare-bones system";
    char * const video_pointer = (char*)0xb8000;


    for (unsigned int i = 0; i < 800; i++) {
        video_pointer[i*2] = ' ';
        video_pointer[i*2+1] = 0x07;
    }


    for (unsigned int i, j= 0; string_hello_world[j] != '\0'; i++,j++){
        video_pointer[i*2] = string_hello_world[j];
        video_pointer[i*2+1] = 0x07;
    }

    return;
}
