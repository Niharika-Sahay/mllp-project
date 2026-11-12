# English Pronunciation Improvement Assistant

## 1. Project Overview

The **English Pronunciation Improvement Assistant** is a Python-based desktop application designed to help users practice English pronunciation. It records speech through a microphone, converts the recorded audio into text using OpenAI Whisper, and compares the recognized text with the reference text to generate a similarity score.

The application also uses text-to-speech functionality to play the reference text, helping users listen and practice.

## 2. Objectives

- Help users practice English pronunciation.
- Convert spoken English into text using speech recognition.
- Compare recognized text with the reference input.
- Generate a pronunciation practice score based on text similarity.
- Provide spoken reference text using text-to-speech.

## 3. Technologies and Tools Used

| Component | Technology |
|---|---|
| Programming language | Python |
| Graphical interface | Tkinter |
| Speech recognition | OpenAI Whisper |
| Text comparison | RapidFuzz |
| Audio recording | SoundDevice |
| Audio processing | NumPy, SciPy |
| Text-to-speech | pyttsx3 |
| Audio support | FFmpeg |

### Models and Libraries

- **OpenAI Whisper:** https://github.com/openai/whisper
- **Whisper tiny.en model:** https://huggingface.co/openai/whisper-tiny.en
- **RapidFuzz:** https://github.com/rapidfuzz/RapidFuzz
- **SoundDevice:** https://python-sounddevice.readthedocs.io/
- **pyttsx3:** https://pyttsx3.readthedocs.io/

The project uses a pretrained speech recognition model. No model training is performed as part of the current implementation.

## 4. Processing Pipeline

The application follows this processing pipeline:

```text
        User
         |
         v
  Enter Reference Text
         |
         v
   Record Voice Input
         |
         v
  Audio Preprocessing
         |
         v
  Whisper Speech Recognition
         |
         v
  Recognized Text Output
         |
         v
  RapidFuzz Text Comparison
         |
         v
   Similarity Score
         |
         v
   Display Result in GUI

  Reference Text ---> pyttsx3
                         |
                         v
                 Spoken Reference Audio
```

## 5. Repository Structure

```text
English-Pronunciation-App/
│
├── main.py
├── requirements.txt
├── setup.bat
├── run_app.bat
│
├── src/
│   ├── gui_tkinter.py
│   ├── audio_recorder.py
│   ├── scorer.py
│   └── speaker.py
│
└── data/
    └── Word database
```

The `data` directory contains the project's word data.

## 6. Installation and Execution

### Prerequisites

- Python 3.8 or later
- Microphone
- Internet connection for initial model download
- FFmpeg installed and available in the system PATH
- Visual Studio Code or another Python IDE

### Step 1: Clone the Repository

### Step 2: Open the Project

Open the downloaded `English-Pronunciation-App` folder in Visual Studio Code.

### Step 3: Install Dependencies

Open the terminal in the project directory and execute:

```bash
pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cpu
```

```bash
pip install "numpy<2"
```

```bash
pip install -r requirements.txt
```

### Step 4: Install FFmpeg

Download FFmpeg from:[FFmpeg](https://ffmpeg.org/download.html)

Ensure that FFmpeg is added to the system PATH.

Verify installation:

```bash
ffmpeg -version
```

### Step 5: Run the Application

Execute:

```bash
python main.py
```

## 7. Sample Inputs and Generated Outputs

### Test Case 1

**Reference Input:**

`Sailor`

**Observed Recognition:**

`See ya lord`

**Observed Score:**

`4/10`

**Observation:**

The speech recognition model incorrectly transcribed the spoken word. This affected the similarity score because the comparison algorithm evaluates the recognized text rather than the actual phonetic pronunciation.

### Test Case 2

**Reference Input:**

`Whirlwind`

**Observed Recognition:**

`Whirlwind`

**Observed Score:**

`10/10`

**Observation:**

The speech recognition model correctly recognized the spoken word. Since the recognized text matched the reference input, the text similarity algorithm generated a full score of 10/10.

### Overall Observation

The test cases demonstrate that the similarity score depends on the accuracy of speech recognition. Incorrect transcription can result in a low score even when the user's pronunciation may be understandable.

## 9. Limitations

- Speech recognition may produce incorrect transcriptions.
- Background noise can affect recognition accuracy.
- Text similarity does not measure individual phonemes or exact pronunciation.
- Accent and speaking speed may influence recognition.
- The current version does not provide detailed feedback about stress, intonation, or individual sounds.

## 10. Future Scope

- Introduce phoneme-level pronunciation evaluation.
- Provide feedback on word stress and intonation.
- Improve recognition accuracy.
- Support additional accents and languages.
- Provide personalized pronunciation suggestions.

## 11. Project Deliverables

Complete source code : [GitHub Repository]()\
Project report (PDF) : \
Presentation slides :\
Demonstration video : 
