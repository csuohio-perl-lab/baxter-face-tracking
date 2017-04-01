import os
import rospy

import roslib
#roslib.load_manifest('example_gui_pub')

from qt_gui.plugin import Plugin
from python_qt_binding import loadUi

from python_qt_binding.QtGui import QWidget  # Creates QWidgets
from python_qt_binding.QtCore import Qt
from std_msgs.msg import Float64

# Class ExampleBtnGUI will inherit from Plugin
class ExampleBtnGUI(Plugin):
   
    def __init__(self, context=None):
        super(ExampleBtnGUI, self).__init__(context) # Initializes child and base 
        # Give QObjects reasonable names
        self.setObjectName('ExampleBtnGUI')
  
        # Create QWidget
        self._widget = QWidget()

        # Get path to UI file which is a sibling of this file        
        pkg_dir = roslib.packages.get_pkg_dir('example_button_gui')
        ui_file_path = os.path.join(pkg_dir, 'ui/example_button_gui.ui')


        # Extend the widget with all attributes and children from UI file
        loadUi(ui_file_path, self._widget)

        # Give QObjects reasonable names
        self._widget.setObjectName('ExampleBtnGUIUi')

        # Show _widget.windowTitle on left-top of each plugin (when 
     	# it's set in _widget). This is useful when you open multiple
	# plugins at once. Also if you open multiple instances of your 
	# plugin at once, these lines add number to make it easy to
	# tell from pane to pane.        
        if context.serial_number() > 1:
            self._widget.setWindowTitle(self._widget.windowTitle() + (' (%d)' % context.serial_number()))

        # Add widget to the user interface
        context.add_widget(self._widget)
    	
        # Now Set up our own interface:
        # ==> Connect the buttons to the functions. simpleBtnDemo is defined in ui/example_button_gui.ui
        self._widget.simpleBtnDemo.clicked.connect(self.btn_clicked_CB)
	
    def shutdown_plugin(self):
        """Kill all subscribers and publishers."""
	pass

    def save_settings(self, plugin_settings, instance_settings):
        # TODO save intrinsic configuration, usually using:
        # instance_settings.set_value(k, v)
    	pass
 
    def restore_settings(self, plugin_settings, instance_settings):
        # TODO restore intrinsic configuration, usually using:
        # v = instance_settings.value(k)
	pass    

    
    # Callback function for push button widget    
    def btn_clicked_CB(self):

        #printing the word in the ui label box
        spin_speed = 3.0

        self._widget.StatusReturn.setText('set LIDAR speed to ' + str(spin_speed))

        #publisher the data to multisense_sl        
        self.pub = rospy.Publisher('multisense_sl/set_spindle_speed', Float64, queue_sizex=10)      
        self.pub.publish(spin_speed)



