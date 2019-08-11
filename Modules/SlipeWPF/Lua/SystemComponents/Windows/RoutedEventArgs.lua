local RoutedEventArgs = {}

RoutedEventArgs.__inherits__ = { System.EventArgs }

createProperties(RoutedEventArgs,{ 
	"RoutedEvent",
	"Handled",
	"Source",
	"OriginalSource",
})

System.define("System.Windows.RoutedEventArgs", RoutedEventArgs)