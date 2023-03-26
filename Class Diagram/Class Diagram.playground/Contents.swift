//MARK: - Association

struct Student {
    var tutor: Tutor
}

struct Tutor {
    var students: [Student]
}

//struct Student {
//    var tutors: [Tutor]
//}

//struct Tutor {
//    var student: Student
//}

//MARK: - Inheritance

class Shape {}

class Square: Shape {}
class Rectangle: Shape {}
class Circle: Shape {}

//MARK: - Realization

protocol Owner {
    var buy: Bool { get }
    var sell: Bool { get }
}

struct Person: Owner {
    var buy: Bool { return true }
    var sell: Bool { return true }
    //...
}

struct Corporation: Owner {
    var buy: Bool { return true }
    var sell: Bool { return true }
    //...
}

//MARK: - Dependency

struct Person1 {
    var readBooks: [Book]
    
    func hasRead(book: Book) -> Bool {
        readBooks.contains { $0.name == book.name }
    }
}

struct Book {
    var name: String
}

//MARK: - Aggregation

struct ClassWorkspace {
    var table: Table
    var chair: Chair
    var pc: PC
    var fan: Fan
}

struct Table {}
struct Chair {}
struct PC {}
struct Fan {}

let table = Table()
let chair = Chair()
let pc = PC()
let fan = Fan()
let classWorkspace = ClassWorkspace(table: table, chair: chair, pc: pc, fan: fan)

//MARK: - Composition

struct HumanBody {
    var kidney: Kidney
    var liver: Liver
    var brain: Brain
    var eyes: Eyes
    init() {
        kidney = Kidney()
        liver = Liver()
        brain = Brain()
        eyes = Eyes()
    }
    
}

struct Kidney {}
struct Liver {}
struct Brain {}
struct Eyes {}

let humanBody = HumanBody()
