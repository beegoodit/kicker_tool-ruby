require "rails_helper"

RSpec.describe KickerTool::ProcessExportAssetService, type: :service do
  describe "basic usage" do
    let(:export) { create(:kicker_tool_export) }
    let(:options) { {} }
    let(:attributes) { {export: export} }

    subject { described_class.new(attributes, options) }

    describe "result" do
      subject { super().perform }

      it { expect(subject).to be_a(Rao::Service::Result::Base) }
      it { expect(subject).to be_ok }
      it { expect(subject.errors.full_messages).to match_array([]) }

      describe "tournament" do
        it { expect(subject.tournament).to be_a(KickerTool::Tournament) }

        describe "options" do
          it { expect(subject.tournament.options).to be_a(KickerTool::Options) }
        end

        describe "qualifying" do
          it { expect(subject.tournament.qualifyings.size).to eq(1) }
          it { expect(subject.tournament.qualifyings.first).to be_a(KickerTool::Qualifying) }

          describe "participants" do
            it { expect(subject.tournament.qualifyings.first.participants.size).to eq(21) }
            it { expect(subject.tournament.qualifyings.first.participants.first).to be_a(KickerTool::Participant) }
          end

          describe "rounds" do
            it { expect(subject.tournament.qualifyings.first.rounds.size).to eq(8) }
            it { expect(subject.tournament.qualifyings.first.rounds.first).to be_a(KickerTool::Round) }

            describe "matches" do
              it { expect(subject.tournament.qualifyings.first.rounds.first.matches.size).to eq(5) }

              describe "disciplines" do
                it { expect(subject.tournament.qualifyings.first.rounds.first.matches.first.disciplines.size).to eq(1) }
                it { expect(subject.tournament.qualifyings.first.rounds.first.matches.first.disciplines.first).to be_a(KickerTool::Discipline) }

                describe "sets" do
                  it { expect(subject.tournament.qualifyings.first.rounds.first.matches.first.disciplines.first.sets.size).to eq(1) }
                  it { expect(subject.tournament.qualifyings.first.rounds.first.matches.first.disciplines.first.sets.first).to be_a(KickerTool::Set) }
                end
              end

              describe "team1" do
                it { expect(subject.tournament.qualifyings.first.rounds.first.matches.first.team1).to be_a(KickerTool::Team) }

                describe "players" do
                  it { expect(subject.tournament.qualifyings.first.rounds.first.matches.first.team1.players.size).to eq(2) }
                  it { expect(subject.tournament.qualifyings.first.rounds.first.matches.first.team1.players.first).to be_a(KickerTool::Player) }
                end
              end

              describe "team2" do
                it { expect(subject.tournament.qualifyings.first.rounds.first.matches.first.team2).to be_a(KickerTool::Team) }
              end
            end
          end

          describe "standings" do
            it { expect(subject.tournament.qualifyings.first.standings.size).to eq(21) }
            it { expect(subject.tournament.qualifyings.first.standings.first).to be_a(KickerTool::Standing) }

            describe "stats" do
              it { expect(subject.tournament.qualifyings.first.standings.first.stats).to be_a(KickerTool::Stats) }
            end
          end
        end
      end
    end

    describe "persistence changes" do
      let(:options) { {autosave: true} }

      it { expect { subject.perform }.to change { KickerTool::Discipline.count }.from(0).to(40) }
      it { expect { subject.perform }.to change { KickerTool::Export.count }.from(0).to(1) }
      it { expect { subject.perform }.to change { KickerTool::Match.count }.from(0).to(40) }
      it { expect { subject.perform }.to change { KickerTool::Options.count }.from(0).to(1) }
      it { expect { subject.perform }.to change { KickerTool::OptionsDiscipline.count }.from(0).to(1) }
      it { expect { subject.perform }.to change { KickerTool::Participant.count }.from(0).to(21) }
      it { expect { subject.perform }.to change { KickerTool::Player.count }.from(0).to(160) }
      it { expect { subject.perform }.to change { KickerTool::Qualifying.count }.from(0).to(1) }
      it { expect { subject.perform }.to change { KickerTool::Round.count }.from(0).to(8) }
      it { expect { subject.perform }.to change { KickerTool::Set.count }.from(0).to(40) }
      it { expect { subject.perform }.to change { KickerTool::Standing.count }.from(0).to(21) }
      it { expect { subject.perform }.to change { KickerTool::Stats.count }.from(0).to(21) }
      it { expect { subject.perform }.to change { KickerTool::Team.count }.from(0).to(80) }
      it { expect { subject.perform }.to change { KickerTool::Tournament.count }.from(0).to(1) }
    end
  end
end
