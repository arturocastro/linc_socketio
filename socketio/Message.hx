package socketio;

@:keep
@:include('linc_socketio.h')
#if !display
@:build(linc.Linc.touch())
@:build(linc.Linc.xml('socketio'))
#end
@:native('message')
extern class Message {
        @:native('new message') static function create () : Message;
        @:native('~message') function delete () : Void;

        //external native function definition
        //can be wrapped in linc::libname or call directly
        //and the header for the lib included in linc_empty.h

    // @:native('linc::empty::native_example')
    // static function native_example() : Int;

        //inline functions can be used as wrappers

    // static inline function example() : Void {
    //     trace('empty project example');
    // }

} //Message
