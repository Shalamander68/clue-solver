// MainWindow.cpp
void MainWindow::on_playButton_clicked() {
    engine.playRound(userInput);
    updateDisplay();
}
