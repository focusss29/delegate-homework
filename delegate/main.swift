protocol AlarmDelegate: AnyObject {
    func alarmDidRing()
}
class AlarmClock {
    weak var delegate: AlarmDelegate?
    func ringAlarm() {
        print("Будильник сработал!!!")
        delegate?.alarmDidRing()
    }
}
class ViewController: AlarmDelegate {
    func alarmDidRing() {
        print("Полученое событие: будильник сработал! ")
    }
}
var alarm = AlarmClock()
var vc = ViewController()

alarm.delegate = vc
vc.alarmDidRing()


