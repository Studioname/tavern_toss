///@ds_stack_reverse(stack)
//reverses the order of items in a stack
function ds_stack_reverse(stack){
	var _receptacle = ds_stack_create();
	var i;
	for (i = ds_stack_size(stack);i>0;i--){
		ds_stack_push(_receptacle, ds_stack_pop(stack));
	}
	ds_stack_copy(stack, _receptacle);
	ds_stack_destroy(_receptacle);
}