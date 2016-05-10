//
//  SurveyTask.swift
//  RKTourettes
//
//  Created by Glenn Rosen on 5/10/16.
//  Copyright © 2016 Boomhower Software, LLC. All rights reserved.
//

import Foundation
import ResearchKit

public var SurveyTask: ORKOrderedTask {
    
    var steps = [ORKStep]()
    
    let instructionStep = ORKInstructionStep(identifier: "IntroStep")
    instructionStep.title = "Survey Questions"
    instructionStep.text = "Please answer the following questions to the best of your ability."
    steps += [instructionStep]
    
    let ageOfOnsetFormat = ORKNumericAnswerFormat(style: ORKNumericAnswerStyle.Integer)
    let ageQuestionStepTitle = "How old was your child when you first noticed his/her tics?"
    let ageQuestionStep = ORKQuestionStep(identifier: "AgeQuestionStep", title: ageQuestionStepTitle, answer: ageOfOnsetFormat)
    steps += [ageQuestionStep]
    
    
    let textChoiceOneText = NSLocalizedString("1", comment: "")
    let textChoiceTwoText = NSLocalizedString("2", comment: "")
    let textChoiceThreeText = NSLocalizedString("3", comment: "")
    let textChoiceFourText = NSLocalizedString("4", comment: "")
    let textChoiceFiveText = NSLocalizedString("5", comment: "")
    let textChoiceSixText = NSLocalizedString("6", comment: "")
    let textChoiceSevenText = NSLocalizedString("7", comment: "")
    let textChoiceEightText = NSLocalizedString("8", comment: "")
    let textChoiceNineText = NSLocalizedString("9", comment: "")

    
    // The text to display can be separate from the value coded for each choice:
    let textChoices = [
        ORKTextChoice(text: textChoiceOneText, value: "1"),
        ORKTextChoice(text: textChoiceTwoText, value: "2"),
        ORKTextChoice(text: textChoiceThreeText, value: "3"),
        ORKTextChoice(text: textChoiceFourText, value: "4"),
        ORKTextChoice(text: textChoiceFiveText, value: "5"),
        ORKTextChoice(text: textChoiceSixText, value: "6"),
        ORKTextChoice(text: textChoiceSevenText, value: "7"),
        ORKTextChoice(text: textChoiceEightText, value: "8"),
        ORKTextChoice(text: textChoiceNineText, value: "9")

    ]
    
//    let answerFormat = ORKAnswerFormat.valuePickerAnswerFormatWithTextChoices(textChoices)
    
    let age1OfOnsetFormat = ORKValuePickerAnswerFormat(textChoices: textChoices)
    let age1QuestionStepTitle = "How old was your child when you first noticed his/her tics?"
    let age1QuestionStep = ORKQuestionStep(identifier: "Age1Question", title: age1QuestionStepTitle, answer: age1OfOnsetFormat)
    steps += [age1QuestionStep]
    
    let ticFormat = ORKBooleanAnswerFormat()
    let ticQuestionStepTitle = "Does your have any of these behaviors during the day?"
    let ticQuestionStep = ORKQuestionStep(identifier: "TicQuestion", title: ticQuestionStepTitle, text: "Blinking, Grimacings, Neck Jerks?", answer: ticFormat)
    steps += [ticQuestionStep]
    
    let ticTextChoice1 = NSLocalizedString("Blinking", comment:"Many episodes of blinking during the day")
    let ticTextChoice2 = NSLocalizedString("Grimacing", comment: "Grimacing or scrunching up of the face")
    let ticTextChoice3 = NSLocalizedString("Neck Jerks", comment: "Large movements of the head during the day")
    
    let ticTextChoice = [
        ORKTextChoice(text: ticTextChoice1, value: "Blink"),
        ORKTextChoice(text: ticTextChoice2, value: "Grimace"),
        ORKTextChoice(text: ticTextChoice3, value: "Neck")
    ]
    
    let tic1Format = ORKTextChoiceAnswerFormat(style: ORKChoiceAnswerStyle.MultipleChoice, textChoices: ticTextChoice)
    let tic1QuestionStepTitle = "Does your child have any of these symptoms"
    let tic1QuestionStepText = "Please check all that apply"
    let tic1QuestionStep = ORKQuestionStep(identifier: "MultipleChoiceTic", title: tic1QuestionStepTitle, text: tic1QuestionStepText, answer: tic1Format)
    steps += [tic1QuestionStep]
    
    let blinkingFormat = ORKBooleanAnswerFormat()
    let blinkingQuestionStepTitle = "Does your child blink often during the day?"
    let blinkingQuestionStep = ORKQuestionStep(identifier: "BlinkingQuestion", title: blinkingQuestionStepTitle, answer: blinkingFormat)
    steps += [blinkingQuestionStep]
    
    let grimaceFormat = ORKBooleanAnswerFormat()
    let grimaceQuestionStepTitle = "Does your child grimace or scrunch up his/her face often during the day?"
    let grimaceQuestionStep = ORKQuestionStep(identifier: "GrimaceQuestion", title: grimaceQuestionStepTitle, answer: grimaceFormat)
    steps += [grimaceQuestionStep]
    
    let neckFormat = ORKBooleanAnswerFormat()
    let neckQuestionStepTitle = "Does your child move his/her neck often during the day?"
    let neckQuestionStep = ORKQuestionStep(identifier: "NeckQuestion", title: neckQuestionStepTitle, answer: neckFormat)
    steps += [neckQuestionStep]
    
    let vocalizationFormat = ORKBooleanAnswerFormat()
    let vocalizationQuestionStepTitle = "Does your vocalize, cough, clear their throat often during the day?"
    let vocalizationQuestionStep = ORKQuestionStep(identifier: "VocalizationQuestion", title: vocalizationQuestionStepTitle, answer: vocalizationFormat)
    steps += [vocalizationQuestionStep]
    
    
    //TODO: add 'what is your quest' question
    
    //TODO: add color question step
    
    let summaryStep = ORKCompletionStep(identifier: "SummaryStep")
    summaryStep.title = "You're all done!"
    summaryStep.text = "Thanks for participating"
    steps += [summaryStep]
    
    return ORKOrderedTask(identifier: "SurveyTask", steps: steps)
}