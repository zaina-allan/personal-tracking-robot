
"use strict";

let Sound = require('./Sound.js');
let ButtonEvent = require('./ButtonEvent.js');
let Led = require('./Led.js');
let PowerSystemEvent = require('./PowerSystemEvent.js');
let RobotStateEvent = require('./RobotStateEvent.js');
let DigitalInputEvent = require('./DigitalInputEvent.js');
let ExternalPower = require('./ExternalPower.js');
let WheelDropEvent = require('./WheelDropEvent.js');
let DockInfraRed = require('./DockInfraRed.js');
let SensorState = require('./SensorState.js');
let DigitalOutput = require('./DigitalOutput.js');
let ScanAngle = require('./ScanAngle.js');
let VersionInfo = require('./VersionInfo.js');
let CliffEvent = require('./CliffEvent.js');
let BumperEvent = require('./BumperEvent.js');
let KeyboardInput = require('./KeyboardInput.js');
let MotorPower = require('./MotorPower.js');
let ControllerInfo = require('./ControllerInfo.js');
let AutoDockingAction = require('./AutoDockingAction.js');
let AutoDockingActionFeedback = require('./AutoDockingActionFeedback.js');
let AutoDockingFeedback = require('./AutoDockingFeedback.js');
let AutoDockingActionResult = require('./AutoDockingActionResult.js');
let AutoDockingGoal = require('./AutoDockingGoal.js');
let AutoDockingActionGoal = require('./AutoDockingActionGoal.js');
let AutoDockingResult = require('./AutoDockingResult.js');

module.exports = {
  Sound: Sound,
  ButtonEvent: ButtonEvent,
  Led: Led,
  PowerSystemEvent: PowerSystemEvent,
  RobotStateEvent: RobotStateEvent,
  DigitalInputEvent: DigitalInputEvent,
  ExternalPower: ExternalPower,
  WheelDropEvent: WheelDropEvent,
  DockInfraRed: DockInfraRed,
  SensorState: SensorState,
  DigitalOutput: DigitalOutput,
  ScanAngle: ScanAngle,
  VersionInfo: VersionInfo,
  CliffEvent: CliffEvent,
  BumperEvent: BumperEvent,
  KeyboardInput: KeyboardInput,
  MotorPower: MotorPower,
  ControllerInfo: ControllerInfo,
  AutoDockingAction: AutoDockingAction,
  AutoDockingActionFeedback: AutoDockingActionFeedback,
  AutoDockingFeedback: AutoDockingFeedback,
  AutoDockingActionResult: AutoDockingActionResult,
  AutoDockingGoal: AutoDockingGoal,
  AutoDockingActionGoal: AutoDockingActionGoal,
  AutoDockingResult: AutoDockingResult,
};
