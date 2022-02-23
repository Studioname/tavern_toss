// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function typecase(string){
	var string_0 = string_char_at(string, 0);
	var string_0_typecase = string_upper(string_0);
	string_delete(string,string_0,0);
	string_insert(string_0_typecase,string,0);
	return string;
}