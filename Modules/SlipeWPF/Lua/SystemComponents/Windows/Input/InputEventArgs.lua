local InputEventArgs = {}

InputEventArgs.__inherits__ = { System.Windows.RoutedEventArgs }

createProperties(InputEventArgs,{ 
	"Device",
	"Timestamp",
})

System.define("System.Windows.Input.InputEventArgs", InputEventArgs)