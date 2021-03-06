class NnAudioctrlDetail_IAudioController: IpcService {
	func getTargetVolume(_ _0: UInt32) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#GetTargetVolume") }
	func setTargetVolume(_ _0: UInt32, _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#SetTargetVolume") }
	func getTargetVolumeMin() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#GetTargetVolumeMin") }
	func getTargetVolumeMax() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#GetTargetVolumeMax") }
	func isTargetMute(_ _0: UInt32) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#IsTargetMute") }
	func setTargetMute(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#SetTargetMute") }
	func isTargetConnected(_ _0: UInt32) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#IsTargetConnected") }
	func setDefaultTarget(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#SetDefaultTarget") }
	func getDefaultTarget() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#GetDefaultTarget") }
	func getAudioOutputMode(_ _0: UInt32) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#GetAudioOutputMode") }
	func setAudioOutputMode(_ _0: UInt32, _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#SetAudioOutputMode") }
	func setForceMutePolicy(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#SetForceMutePolicy") }
	func getForceMutePolicy() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#GetForceMutePolicy") }
	func getOutputModeSetting(_ _0: UInt32) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#GetOutputModeSetting") }
	func setOutputModeSetting(_ _0: UInt32, _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#SetOutputModeSetting") }
	func setOutputTarget(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#SetOutputTarget") }
	func setInputTargetForceEnabled(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#SetInputTargetForceEnabled") }
	func setHeadphoneOutputLevelMode(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#SetHeadphoneOutputLevelMode") }
	func getHeadphoneOutputLevelMode() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#GetHeadphoneOutputLevelMode") }
	func acquireAudioVolumeUpdateEventForPlayReport() throws -> KObject { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#AcquireAudioVolumeUpdateEventForPlayReport") }
	func acquireAudioOutputDeviceUpdateEventForPlayReport() throws -> KObject { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#AcquireAudioOutputDeviceUpdateEventForPlayReport") }
	func getAudioOutputTargetForPlayReport() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#GetAudioOutputTargetForPlayReport") }
	func notifyHeadphoneVolumeWarningDisplayedEvent() throws { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#NotifyHeadphoneVolumeWarningDisplayedEvent") }
	func setSystemOutputMasterVolume(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#SetSystemOutputMasterVolume") }
	func getSystemOutputMasterVolume() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#GetSystemOutputMasterVolume") }
	func getAudioVolumeDataForPlayReport() throws -> Any? { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#GetAudioVolumeDataForPlayReport") }
	func updateHeadphoneSettings(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#UpdateHeadphoneSettings") }
	
	override func dispatch(_ im: IncomingMessage, _ om: OutgoingMessage) throws {
		switch im.commandId {
		case 0:
			let ret = try getTargetVolume(im.getData(8) as UInt32)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 1:
			try setTargetVolume(im.getData(8) as UInt32, im.getData(12) as UInt32)
			om.initialize(0, 0, 0)
		
		case 2:
			let ret = try getTargetVolumeMin()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 3:
			let ret = try getTargetVolumeMax()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 4:
			let ret = try isTargetMute(im.getData(8) as UInt32)
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 5:
			try setTargetMute(im.getData(8) as UInt64)
			om.initialize(0, 0, 0)
		
		case 6:
			let ret = try isTargetConnected(im.getData(8) as UInt32)
			om.initialize(0, 0, 1)
			om.setData(8, ret)
		
		case 7:
			try setDefaultTarget(nil)
			om.initialize(0, 0, 0)
		
		case 8:
			let ret = try getDefaultTarget()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 9:
			let ret = try getAudioOutputMode(im.getData(8) as UInt32)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 10:
			try setAudioOutputMode(im.getData(8) as UInt32, im.getData(12) as UInt32)
			om.initialize(0, 0, 0)
		
		case 11:
			try setForceMutePolicy(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 12:
			let ret = try getForceMutePolicy()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 13:
			let ret = try getOutputModeSetting(im.getData(8) as UInt32)
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 14:
			try setOutputModeSetting(im.getData(8) as UInt32, im.getData(12) as UInt32)
			om.initialize(0, 0, 0)
		
		case 15:
			try setOutputTarget(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 16:
			try setInputTargetForceEnabled(im.getData(8) as UInt8)
			om.initialize(0, 0, 0)
		
		case 17:
			try setHeadphoneOutputLevelMode(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 18:
			let ret = try getHeadphoneOutputLevelMode()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 19:
			let ret = try acquireAudioVolumeUpdateEventForPlayReport()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 20:
			let ret = try acquireAudioOutputDeviceUpdateEventForPlayReport()
			om.initialize(0, 1, 0)
			om.copy(0, ret)
		
		case 21:
			let ret = try getAudioOutputTargetForPlayReport()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 22:
			try notifyHeadphoneVolumeWarningDisplayedEvent()
			om.initialize(0, 0, 0)
		
		case 23:
			try setSystemOutputMasterVolume(im.getData(8) as UInt32)
			om.initialize(0, 0, 0)
		
		case 24:
			let ret = try getSystemOutputMasterVolume()
			om.initialize(0, 0, 4)
			om.setData(8, ret)
		
		case 25:
			let ret = try getAudioVolumeDataForPlayReport()
			om.initialize(0, 0, 0)
		
		case 26:
			try updateHeadphoneSettings(nil)
			om.initialize(0, 0, 0)
		
		default:
			print("Unhandled command to nn::audioctrl::detail::IAudioController: \(im.commandId)")
			try! bailout()
		}
	}
}

/*
class NnAudioctrlDetail_IAudioController_Impl: NnAudioctrlDetail_IAudioController {
	override func getTargetVolume(_ _0: UInt32) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#GetTargetVolume") }
	override func setTargetVolume(_ _0: UInt32, _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#SetTargetVolume") }
	override func getTargetVolumeMin() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#GetTargetVolumeMin") }
	override func getTargetVolumeMax() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#GetTargetVolumeMax") }
	override func isTargetMute(_ _0: UInt32) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#IsTargetMute") }
	override func setTargetMute(_ _0: UInt64) throws { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#SetTargetMute") }
	override func isTargetConnected(_ _0: UInt32) throws -> UInt8 { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#IsTargetConnected") }
	override func setDefaultTarget(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#SetDefaultTarget") }
	override func getDefaultTarget() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#GetDefaultTarget") }
	override func getAudioOutputMode(_ _0: UInt32) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#GetAudioOutputMode") }
	override func setAudioOutputMode(_ _0: UInt32, _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#SetAudioOutputMode") }
	override func setForceMutePolicy(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#SetForceMutePolicy") }
	override func getForceMutePolicy() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#GetForceMutePolicy") }
	override func getOutputModeSetting(_ _0: UInt32) throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#GetOutputModeSetting") }
	override func setOutputModeSetting(_ _0: UInt32, _ _1: UInt32) throws { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#SetOutputModeSetting") }
	override func setOutputTarget(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#SetOutputTarget") }
	override func setInputTargetForceEnabled(_ _0: UInt8) throws { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#SetInputTargetForceEnabled") }
	override func setHeadphoneOutputLevelMode(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#SetHeadphoneOutputLevelMode") }
	override func getHeadphoneOutputLevelMode() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#GetHeadphoneOutputLevelMode") }
	override func acquireAudioVolumeUpdateEventForPlayReport() throws -> KObject { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#AcquireAudioVolumeUpdateEventForPlayReport") }
	override func acquireAudioOutputDeviceUpdateEventForPlayReport() throws -> KObject { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#AcquireAudioOutputDeviceUpdateEventForPlayReport") }
	override func getAudioOutputTargetForPlayReport() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#GetAudioOutputTargetForPlayReport") }
	override func notifyHeadphoneVolumeWarningDisplayedEvent() throws { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#NotifyHeadphoneVolumeWarningDisplayedEvent") }
	override func setSystemOutputMasterVolume(_ _0: UInt32) throws { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#SetSystemOutputMasterVolume") }
	override func getSystemOutputMasterVolume() throws -> UInt32 { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#GetSystemOutputMasterVolume") }
	override func getAudioVolumeDataForPlayReport() throws -> Any? { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#GetAudioVolumeDataForPlayReport") }
	override func updateHeadphoneSettings(_ _0: Any?) throws { throw IpcError.unimplemented(name: "nn::audioctrl::detail::nn::audioctrl::detail::IAudioController#UpdateHeadphoneSettings") }
}
*/
