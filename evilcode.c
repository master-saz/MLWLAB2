int main ( int argc , char ** argv )
{
char code [] = "\xeb\x17\x31\xc0\x31\xdb\x31\xd2\xb0\x04\xb3\x01\x59\xb2\x07\xcd\x80\x31\xc0\xb0\x01\x31\xdb\xcd\x80\xe8\xe4\xff\xff\xff\x59\x4f\x20\x4d\x41\x4d\x41\x5c\x6e";
int (* hack_func ) () ; // Function pointer declaration
hack_func = (int (*) () ) code ; // Assign the func . pointer
// to the shellcode
(* hack_func ) () ; // We invoke the shellcode
}
