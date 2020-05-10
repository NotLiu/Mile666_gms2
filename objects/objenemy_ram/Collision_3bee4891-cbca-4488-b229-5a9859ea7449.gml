/// @description Insert description here
// You can write your code in this editor
if(objtank.iframe == false){
	objGameManager.hlth -= 1;
	objtank.iframe = true;
	objtank.flashAlpha = 1;
	objscreenshake.shake_value = 2;
}
instance_destroy();