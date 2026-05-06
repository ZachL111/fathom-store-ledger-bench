@main
struct TestRunner {
    static func main() {
        let signalcase_1 = Signal(demand: 56, capacity: 97, latency: 22, risk: 17, weight: 4)
        precondition(Policy.score(signalcase_1) == 95)
        precondition(Policy.classify(signalcase_1) == "review")
        let signalcase_2 = Signal(demand: 84, capacity: 101, latency: 27, risk: 5, weight: 8)
        precondition(Policy.score(signalcase_2) == 208)
        precondition(Policy.classify(signalcase_2) == "accept")
        let signalcase_3 = Signal(demand: 81, capacity: 81, latency: 11, risk: 14, weight: 12)
        precondition(Policy.score(signalcase_3) == 214)
        precondition(Policy.classify(signalcase_3) == "accept")
        let domainReview = DomainReview(signal: 73, slack: 26, drag: 8, confidence: 82)
        precondition(DomainReviewLens.score(domainReview) == 230)
        precondition(DomainReviewLens.lane(domainReview) == "ship")
    }
}
